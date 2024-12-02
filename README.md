# Project-5-Group-3
Phần mềm quản lý đặt gia công trang sức
#####Thành Viên#####
Trương Minh Quang(Nhóm trưởng)	087205007694	Xây dựng trang chủ và blog (Frontend & Content Management)
Nguyễn Đăng Khoa	087205017729	Quản lý khách hàng (Customer Management)
Trần Ngọc Quí	089205002434	Quản lý nhân viên kinh doanh (Sales Staff Management)
Nguyễn Trường Thịnh	089205002399	Quản lý thiết kế (Design Staff Management)
Nguyễn Minh Khang	087205008666	Quản lý hệ thống và admin (System Admin)
Nguyễn Quốc Khang	089205002112	Quản lý sản xuất (Production Staff Management)
Phạm Trần Quốc Thắng	087205002810	Quản lý giá và định mức (Pricing and Costing)


**Kết nối cơ sỡ dữ liệu**
//lưu ý cần
//Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser ; để có thể chạy mt ảo
//bật TCP/IP trong SQL Server
//Kiểm tra kết nối cho cổng 1433

Bước 1 :cd đến file spripts trong fouder .venv và chạy môi trường ảo
	+.\activate
Bước 2: cd về file cha và tạo django
	+django-admin startproject <tên file>

////sửa trong seting:
DATABASES = {
    'default': {
        'ENGINE': 'mssql',
        'NAME': 'SimpleDB',#tên DATABASE
        'USER': 'quangsenpai',#tên đăng nhập SQL sever
        'PASSWORD':'123456',#MK Đăng nhập
        'HOST': 'localhost',
        'PORT':'1433',
        'OPTIONS':{
            'dirver': 'OBBC Driver 18 for SQL Sever',#Tải cái driver này về
            'Trusted_Connection':'yes',#nếu có user pass thì xóa dòng này
        }
    }
}
	-python -m pip install --upgrade pip//nâng cấp pip cho mt ảo
	-pip install django==5.1.3 //Để đảm bảo đúng version
	-pip install mssql-django //Important
 	+python manage.py makemigrations
	+python manage.py migrate
	+python manage.py runserver
