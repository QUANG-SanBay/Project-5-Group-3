from django.test import TestCase, Client
from django.urls import reverse
from django.core.files.uploadedfile import SimpleUploadedFile
from .models import Product, Product_Details, Blog
from datetime import datetime

# Tạo dummy image để gán cho các đối tượng cần thiết
dummy_image = SimpleUploadedFile(
    "test.jpg", b"file_content", content_type="image/jpeg"
)

class ProductTestCase(TestCase):
    def test_product_details_created_on_product_creation(self):
        # Tạo sản phẩm mới với dummy image cho trường image_1
        product = Product.objects.create(
            name="Test Product",
            price=100.0,
            type="ring",
            design="design_img",
            image_1=dummy_image
        )
        # Kiểm tra rằng một đối tượng Product_Details đã được tạo (thông qua signal)
        details = Product_Details.objects.filter(product=product).first()
        self.assertIsNotNone(details)
    
    def test_formatted_price_property(self):
        product = Product.objects.create(
            name="Test Product",
            price=1234.56,
            type="ring",
            design="design_img",
            image_1=dummy_image
        )
        # Kiểm tra formatted_price trả về chuỗi giá đã định dạng
        self.assertEqual(product.formatted_price, "1,234.56")

class CategoryViewTestCase(TestCase):
    def setUp(self):
        # Tạo các sản phẩm với các kiểu khác nhau và cung cấp dummy image
        Product.objects.create(
            name="Ring Product", price=200.0, type="ring",
            design="design_img", image_1=dummy_image
        )
        Product.objects.create(
            name="Earring Product", price=300.0, type="earring",
            design="design_img", image_1=dummy_image
        )
        Product.objects.create(
            name="Pendant Product", price=400.0, type="pendant",
            design="design_img", image_1=dummy_image
        )
        self.client = Client()
    
    def test_category_view_for_ring(self):
        # Giả sử URL view category nhận slug 'Nhan' mapping cho type "ring"
        url = reverse('category', kwargs={'category_slug': 'Nhan'})
        response = self.client.get(url)
        self.assertEqual(response.status_code, 200)
        # Xác nhận rằng trang chứa sản phẩm ring
        self.assertContains(response, "Ring Product")
        # Và không chứa sản phẩm có kiểu khác
        self.assertNotContains(response, "Earring Product")
    
    def test_category_view_for_all(self):
        url = reverse('category', kwargs={'category_slug': 'TatCa'})
        response = self.client.get(url)
        self.assertEqual(response.status_code, 200)
        # Xác nhận tất cả các sản phẩm đều xuất hiện
        self.assertContains(response, "Ring Product")
        self.assertContains(response, "Earring Product")
        self.assertContains(response, "Pendant Product")

class BlogViewTestCase(TestCase):
    def setUp(self):
        # Tạo một Blog với dummy image cho trường image
        self.blog = Blog.objects.create(
            title="Test Blog",
            content="Test Content",
            date=datetime.now(),
            image=dummy_image
        )
        self.client = Client()
    
    def test_blog_detail_view(self):
        url = reverse('blog_detail', kwargs={'pk': self.blog.pk})
        response = self.client.get(url)
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, self.blog.title)
        self.assertContains(response, self.blog.content)

class HomeViewTestCase(TestCase):
    def setUp(self):
        # Tạo sản phẩm và blog dùng cho trang chủ, cung cấp dummy image cho các trường cần thiết
        Product.objects.create(
            name="Ring Product", price=200.0, type="ring",
            design="design_img", image_1=dummy_image
        )
        Blog.objects.create(
            title="Home Blog",
            content="Content for home blog",
            date=datetime.now(),
            image=dummy_image
        )
        self.client = Client()
    
    def test_get_home_view(self):
        url = reverse('home')
        response = self.client.get(url)
        self.assertEqual(response.status_code, 200)
        # Kiểm tra xem trang chủ có chứa một vài nội dung mẫu
        self.assertContains(response, "Ring Product")
        self.assertContains(response, "Home Blog")