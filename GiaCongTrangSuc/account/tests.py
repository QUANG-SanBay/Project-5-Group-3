from django.test import TestCase
from django.contrib.auth.models import User
from django.urls import reverse
from .models import Profile
from home.models import Customer

class UserProfileTestCase(TestCase):
    def test_profile_and_customer_created_on_user_creation(self):
        # Tạo User mới
        user = User.objects.create_user(username="testuser", email="test@example.com", password="password123")
        # Kiểm tra Profile được tạo tự động
        self.assertIsNotNone(user.profile)
        # Cập nhật vai trò của Profile thành 'customer'
        user.profile.vai_tro = 'customer'
        user.profile.save()
        # Kiểm tra Customer được tạo thông qua signal khi vai trò là 'customer'
        customer = Customer.objects.filter(user=user).first()
        self.assertIsNotNone(customer)
        self.assertEqual(customer.user, user)

class SignUpViewTestCase(TestCase):
    def test_signup_creates_user_with_customer_profile(self):
        signup_url = reverse('signUp')
        # Lưu ý: các key phải trùng với tên input trong form (ở đây dùng "full-name" và "password-confirmation")
        post_data = {
            'full-name': 'Test User',
            'email': 'testuser@example.com',
            'password': 'password123',
            'password-confirmation': 'password123'
        }
        response = self.client.post(signup_url, data=post_data)
        # Xét mã trạng thái trả về là 200 (ở đây view render lại trang signUp)
        self.assertEqual(response.status_code, 200)
        # Kiểm tra xem User đã được tạo chưa
        user = User.objects.get(email='testuser@example.com')
        # Sau khi user được tạo, signal tự động tạo profile nên ta cập nhật vai trò
        # Trong view, sau khi tạo user, ta gán: user.profile.vai_tro = 'customer'
        # Do đó, kiểm tra profile có vai trò 'customer'
        self.assertEqual(user.profile.vai_tro, 'customer')