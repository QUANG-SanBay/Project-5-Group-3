/****** Object:  Table [dbo].[sales_sales]    Script Date: 2/9/2025 4:04:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_sales](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account_profile] ([user_id], [vai_tro]) VALUES (5, N'')
INSERT [dbo].[account_profile] ([user_id], [vai_tro]) VALUES (6, N'')
INSERT [dbo].[account_profile] ([user_id], [vai_tro]) VALUES (7, N'')
INSERT [dbo].[account_profile] ([user_id], [vai_tro]) VALUES (8, N'')
INSERT [dbo].[account_profile] ([user_id], [vai_tro]) VALUES (9, N'')
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add user', 4, N'add_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change user', 4, N'change_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete user', 4, N'delete_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view user', 4, N'view_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add content type', 5, N'add_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change content type', 5, N'change_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete content type', 5, N'delete_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view content type', 5, N'view_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add session', 6, N'add_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change session', 6, N'change_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete session', 6, N'delete_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view session', 6, N'view_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add profile', 7, N'add_profile')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change profile', 7, N'change_profile')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete profile', 7, N'delete_profile')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view profile', 7, N'view_profile')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add blog', 8, N'add_blog')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change blog', 8, N'change_blog')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete blog', 8, N'delete_blog')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view blog', 8, N'view_blog')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add product', 9, N'add_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change product', 9, N'change_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete product', 9, N'delete_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view product', 9, N'view_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add customer', 10, N'add_customer')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change customer', 10, N'change_customer')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete customer', 10, N'delete_customer')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view customer', 10, N'view_customer')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add oder', 11, N'add_oder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change oder', 11, N'change_oder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete oder', 11, N'delete_oder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view oder', 11, N'view_oder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (45, N'Can add product_ details', 12, N'add_product_details')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (46, N'Can change product_ details', 12, N'change_product_details')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (47, N'Can delete product_ details', 12, N'delete_product_details')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (48, N'Can view product_ details', 12, N'view_product_details')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (49, N'Can add sales', 13, N'add_sales')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (50, N'Can change sales', 13, N'change_sales')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (51, N'Can delete sales', 13, N'delete_sales')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (52, N'Can view sales', 13, N'view_sales')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (53, N'Can add bao gia', 14, N'add_baogia')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (54, N'Can change bao gia', 14, N'change_baogia')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (55, N'Can delete bao gia', 14, N'delete_baogia')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (56, N'Can view bao gia', 14, N'view_baogia')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (57, N'Can add design', 15, N'add_design')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (58, N'Can change design', 15, N'change_design')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (59, N'Can delete design', 15, N'delete_design')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (60, N'Can view design', 15, N'view_design')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (61, N'Can add thiet ke', 16, N'add_thietke')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (62, N'Can change thiet ke', 16, N'change_thietke')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (63, N'Can delete thiet ke', 16, N'delete_thietke')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (64, N'Can view thiet ke', 16, N'view_thietke')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (65, N'Can add production', 17, N'add_production')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (66, N'Can change production', 17, N'change_production')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (67, N'Can delete production', 17, N'delete_production')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (68, N'Can view production', 17, N'view_production')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (69, N'Can add tien do san xuat', 18, N'add_tiendosanxuat')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (70, N'Can change tien do san xuat', 18, N'change_tiendosanxuat')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (71, N'Can delete tien do san xuat', 18, N'delete_tiendosanxuat')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (72, N'Can view tien do san xuat', 18, N'view_tiendosanxuat')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (73, N'Can add chinh sach', 19, N'add_chinhsach')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (74, N'Can change chinh sach', 19, N'change_chinhsach')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (75, N'Can delete chinh sach', 19, N'delete_chinhsach')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (76, N'Can view chinh sach', 19, N'view_chinhsach')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (77, N'Can add gia vat lieu', 20, N'add_giavatlieu')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (78, N'Can change gia vat lieu', 20, N'change_giavatlieu')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (79, N'Can delete gia vat lieu', 20, N'delete_giavatlieu')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (80, N'Can view gia vat lieu', 20, N'view_giavatlieu')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (81, N'Can add policy', 21, N'add_policy')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (82, N'Can change policy', 21, N'change_policy')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (83, N'Can delete policy', 21, N'delete_policy')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (84, N'Can view policy', 21, N'view_policy')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (85, N'Can add management', 22, N'add_management')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (86, N'Can change management', 22, N'change_management')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (87, N'Can delete management', 22, N'delete_management')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (88, N'Can view management', 22, N'view_management')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[auth_user] ON 

INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5, N'pbkdf2_sha256$720000$cra7bhIHjBPvdafjQa2ldG$Vohhj1Lkk92NwyKAnVuRP6kh40PYg42mWGLQ3ACAxuY=', CAST(N'2025-02-06T06:31:21.3415350+00:00' AS DateTimeOffset), 1, N'admin4', N'', N'', N'quang@gmail.edu.vn', 1, 1, CAST(N'2025-02-06T06:27:02.4050230+00:00' AS DateTimeOffset))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (6, N'pbkdf2_sha256$720000$pb1FuRVK2T26ngRkCIwjYE$/8Y6DRhFRNlHwLVLZv5E0zed8maJz1OS2VZBzZ/B/M4=', CAST(N'2025-02-09T08:57:38.7322360+00:00' AS DateTimeOffset), 1, N'admin', N'', N'', N'quang@gmail.com', 1, 1, CAST(N'2025-02-06T06:32:04.3142260+00:00' AS DateTimeOffset))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (7, N'pbkdf2_sha256$720000$F8PWUK5Si2Vh7oTVx5O6Qe$f/LFdO7Iae7sf7jO6sd5qgzfdtMixa1IOmNxXGgHY2k=', NULL, 0, N'quangsanbay', N'quangsb', N'', N'quangsanbay@gmail.com', 0, 1, CAST(N'2025-02-06T06:32:55.4978880+00:00' AS DateTimeOffset))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (8, N'pbkdf2_sha256$720000$UOEdsKZjpSg3XrZqoGpUcV$LCgpdUCr/Q8baPABT67F6nNk2sDIb//BpESeGcPauic=', NULL, 0, N'quangsanbay1', N'quangsb', N'', N'quangsanbay1@gmail.com', 0, 1, CAST(N'2025-02-07T02:43:56.0859870+00:00' AS DateTimeOffset))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (9, N'pbkdf2_sha256$720000$xx6gnTMYVujMxb5UtHLpGz$0AFJ8kkD7ubt4q8SIxcrVifBaTW+/dCwYMVWhbpmrVM=', CAST(N'2025-02-09T08:58:31.6272150+00:00' AS DateTimeOffset), 0, N'quang1', N'quang san bay', N'', N'quang1@gmail.com', 0, 1, CAST(N'2025-02-09T08:58:23.3495970+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[auth_user] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 

INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2025-02-06T06:31:35.6657260+00:00' AS DateTimeOffset), N'1', N'admin', 3, N'', 4, 5)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2025-02-06T06:31:39.0952820+00:00' AS DateTimeOffset), N'2', N'admin1', 3, N'', 4, 5)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2025-02-06T06:31:42.8967840+00:00' AS DateTimeOffset), N'3', N'admin2', 3, N'', 4, 5)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2025-02-06T06:31:46.1200990+00:00' AS DateTimeOffset), N'4', N'admin3', 3, N'', 4, 5)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2025-02-09T05:36:28.5799570+00:00' AS DateTimeOffset), N'1', N'Bộ trang sức Vàng 14K đính đá Tourmaline', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2025-02-09T05:40:30.0238580+00:00' AS DateTimeOffset), N'1', N'Bộ trang sức Vàng 14K đính đá Tourmaline', 2, N'[{"changed": {"fields": ["Gi\u00e1"]}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (7, CAST(N'2025-02-09T05:42:48.8068180+00:00' AS DateTimeOffset), N'1', N'Bộ trang sức Vàng 14K đính đá Tourmaline', 2, N'[{"changed": {"fields": ["Gi\u00e1"]}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (8, CAST(N'2025-02-09T05:43:26.2668270+00:00' AS DateTimeOffset), N'1', N'Bộ trang sức Vàng 14K đính đá Tourmaline', 2, N'[]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (9, CAST(N'2025-02-09T05:46:05.2832460+00:00' AS DateTimeOffset), N'2', N'Bộ trang sức Vàng 18K đính đá Citrine', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (10, CAST(N'2025-02-09T05:47:13.3516750+00:00' AS DateTimeOffset), N'3', N'Bộ trang sức Xanh trắng 14K đính đá Tanzanite', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (11, CAST(N'2025-02-09T05:47:38.1132360+00:00' AS DateTimeOffset), N'2', N'Bộ trang sức Vàng 18K đính đá Citrine', 2, N'[{"changed": {"fields": ["H\u00ecnh \u1ea3nh ch\u00ednh", "H\u00ecnh \u1ea3nh 2", "H\u00ecnh \u1ea3nh 3", "H\u00ecnh \u1ea3nh 4"]}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (12, CAST(N'2025-02-09T05:49:53.4463370+00:00' AS DateTimeOffset), N'4', N'Bộ sưu tập mùa xuân', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (13, CAST(N'2025-02-09T05:51:32.4661610+00:00' AS DateTimeOffset), N'5', N'Bộ sưu tập trang sức đá xanh', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (14, CAST(N'2025-02-09T05:52:27.2203110+00:00' AS DateTimeOffset), N'6', N'Bộ trang sức Vàng Trắng', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (15, CAST(N'2025-02-09T05:54:18.4292190+00:00' AS DateTimeOffset), N'7', N'Bộ trang sức Vàng Trắng đính Kim Cương', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (16, CAST(N'2025-02-09T05:57:17.1776490+00:00' AS DateTimeOffset), N'8', N'Nhẫn đính Kim Cương Nam/Nữ', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (17, CAST(N'2025-02-09T05:59:45.9765110+00:00' AS DateTimeOffset), N'9', N'Nhẫn bạc Nam', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (18, CAST(N'2025-02-09T06:00:54.1185070+00:00' AS DateTimeOffset), N'10', N'Nhẫn hoa vàng cho Nữ', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (19, CAST(N'2025-02-09T06:02:28.7490790+00:00' AS DateTimeOffset), N'11', N'Nhẫn mũi tên bạc', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (20, CAST(N'2025-02-09T06:03:53.7745100+00:00' AS DateTimeOffset), N'12', N'Nhẫn Kim Cương đính đá Ruby', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (21, CAST(N'2025-02-09T06:03:58.1068220+00:00' AS DateTimeOffset), N'11', N'Nhẫn mũi tên bạc', 2, N'[{"changed": {"fields": ["Thi\u1ebft k\u1ebf"]}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (22, CAST(N'2025-02-09T06:04:07.6067660+00:00' AS DateTimeOffset), N'10', N'Nhẫn hoa vàng cho Nữ', 2, N'[]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (23, CAST(N'2025-02-09T06:04:27.5429240+00:00' AS DateTimeOffset), N'11', N'Nhẫn mũi tên bạc', 2, N'[]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (24, CAST(N'2025-02-09T06:06:57.8700100+00:00' AS DateTimeOffset), N'13', N'Nhẫn vàng đính Cubic Zirconia', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (25, CAST(N'2025-02-09T06:07:13.9884240+00:00' AS DateTimeOffset), N'13', N'Nhẫn vàng đính Cubic Zirconia', 2, N'[{"changed": {"fields": ["\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (26, CAST(N'2025-02-09T06:07:21.4182000+00:00' AS DateTimeOffset), N'12', N'Nhẫn Kim Cương đính đá Ruby', 2, N'[{"changed": {"fields": ["\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (27, CAST(N'2025-02-09T06:08:27.0607040+00:00' AS DateTimeOffset), N'1', N'Bộ trang sức Vàng 14K đính đá Tourmaline', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (28, CAST(N'2025-02-09T06:09:09.5732430+00:00' AS DateTimeOffset), N'2', N'Bộ trang sức Vàng 18K đính đá Citrine', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (29, CAST(N'2025-02-09T06:10:26.2169460+00:00' AS DateTimeOffset), N'3', N'Bộ trang sức Xanh trắng 14K đính đá Tanzanite', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (30, CAST(N'2025-02-09T06:11:25.6298850+00:00' AS DateTimeOffset), N'4', N'Bộ sưu tập mùa xuân', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (31, CAST(N'2025-02-09T06:12:07.2999320+00:00' AS DateTimeOffset), N'5', N'Bộ sưu tập trang sức đá xanh', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (32, CAST(N'2025-02-09T06:12:40.5795890+00:00' AS DateTimeOffset), N'6', N'Bộ trang sức Vàng Trắng', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (33, CAST(N'2025-02-09T06:13:06.4625870+00:00' AS DateTimeOffset), N'7', N'Bộ trang sức Vàng Trắng đính Kim Cương', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "Trang s\u1ee9c \u0111\u00ednh k\u00e8m", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (34, CAST(N'2025-02-09T06:13:43.1100700+00:00' AS DateTimeOffset), N'8', N'Nhẫn đính Kim Cương Nam/Nữ', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (35, CAST(N'2025-02-09T06:14:03.4079470+00:00' AS DateTimeOffset), N'9', N'Nhẫn bạc Nam', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (36, CAST(N'2025-02-09T06:14:23.1461800+00:00' AS DateTimeOffset), N'10', N'Nhẫn hoa vàng cho Nữ', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (37, CAST(N'2025-02-09T06:14:38.6559140+00:00' AS DateTimeOffset), N'11', N'Nhẫn mũi tên bạc', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (38, CAST(N'2025-02-09T06:15:02.0870240+00:00' AS DateTimeOffset), N'12', N'Nhẫn Kim Cương đính đá Ruby', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (39, CAST(N'2025-02-09T06:15:34.7819700+00:00' AS DateTimeOffset), N'13', N'Nhẫn vàng đính Cubic Zirconia', 2, N'[{"changed": {"fields": ["\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (40, CAST(N'2025-02-09T06:15:50.4272970+00:00' AS DateTimeOffset), N'12', N'Nhẫn Kim Cương đính đá Ruby', 2, N'[{"changed": {"fields": ["\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (41, CAST(N'2025-02-09T06:15:58.4971400+00:00' AS DateTimeOffset), N'13', N'Nhẫn vàng đính Cubic Zirconia', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (42, CAST(N'2025-02-09T06:20:24.9977060+00:00' AS DateTimeOffset), N'14', N'Nhẫn Bạch Kim đính ruby', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (43, CAST(N'2025-02-09T06:22:51.0641000+00:00' AS DateTimeOffset), N'15', N'Bông tai ngọc trai', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (44, CAST(N'2025-02-09T06:23:46.4369390+00:00' AS DateTimeOffset), N'16', N'Bông tai Ngọc lục bảo', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (45, CAST(N'2025-02-09T06:24:45.4540550+00:00' AS DateTimeOffset), N'17', N'Bông tai Bạc', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (46, CAST(N'2025-02-09T06:25:53.2266060+00:00' AS DateTimeOffset), N'18', N'Bông tai vàng đính Ruby xanh đại dương', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (47, CAST(N'2025-02-09T06:27:03.7903580+00:00' AS DateTimeOffset), N'19', N'Bông tai hình thoi bạch kim', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (48, CAST(N'2025-02-09T06:28:25.1943020+00:00' AS DateTimeOffset), N'20', N'Bông tai đôi môi đỏ thẩm', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (49, CAST(N'2025-02-09T06:29:54.7760410+00:00' AS DateTimeOffset), N'21', N'Bông tai Ngọc lục bảo vòng quay may mắn', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (50, CAST(N'2025-02-09T06:31:23.8187110+00:00' AS DateTimeOffset), N'22', N'Bông tai hoa Hồng', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (51, CAST(N'2025-02-09T06:32:40.8244800+00:00' AS DateTimeOffset), N'23', N'Bông tai hoa Vàng mùa thu', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (52, CAST(N'2025-02-09T06:33:36.0910210+00:00' AS DateTimeOffset), N'24', N'Bông tai Bạc đính Kim Cương', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (53, CAST(N'2025-02-09T06:50:16.9120710+00:00' AS DateTimeOffset), N'24', N'Bông tai Bạc đính Kim Cương', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (54, CAST(N'2025-02-09T06:50:40.7813810+00:00' AS DateTimeOffset), N'23', N'Bông tai hoa Vàng mùa thu', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (55, CAST(N'2025-02-09T06:51:05.9484070+00:00' AS DateTimeOffset), N'22', N'Bông tai hoa Hồng', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (56, CAST(N'2025-02-09T06:51:21.2906520+00:00' AS DateTimeOffset), N'21', N'Bông tai Ngọc lục bảo vòng quay may mắn', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (57, CAST(N'2025-02-09T06:51:39.8808260+00:00' AS DateTimeOffset), N'20', N'Bông tai đôi môi đỏ thẩm', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (58, CAST(N'2025-02-09T06:51:44.8532240+00:00' AS DateTimeOffset), N'20', N'Bông tai đôi môi đỏ thẩm', 2, N'[{"changed": {"fields": ["\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (59, CAST(N'2025-02-09T06:51:57.9969040+00:00' AS DateTimeOffset), N'19', N'Bông tai hình thoi bạch kim', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (60, CAST(N'2025-02-09T06:52:19.7290150+00:00' AS DateTimeOffset), N'18', N'Bông tai vàng đính Ruby xanh đại dương', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (61, CAST(N'2025-02-09T06:52:31.7030550+00:00' AS DateTimeOffset), N'17', N'Bông tai Bạc', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (62, CAST(N'2025-02-09T06:52:43.0060640+00:00' AS DateTimeOffset), N'16', N'Bông tai Ngọc lục bảo', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (63, CAST(N'2025-02-09T06:59:58.3039480+00:00' AS DateTimeOffset), N'26', N'test prduc', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (64, CAST(N'2025-02-09T07:38:42.6623700+00:00' AS DateTimeOffset), N'26', N'test prduc', 3, N'', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (65, CAST(N'2025-02-09T07:39:02.0888190+00:00' AS DateTimeOffset), N'25', N'Yêu cầu gia công - necklace', 3, N'', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (66, CAST(N'2025-02-09T08:02:16.0332430+00:00' AS DateTimeOffset), N'27', N'Lắc tay bạc đính kim cương', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (67, CAST(N'2025-02-09T08:03:07.7797750+00:00' AS DateTimeOffset), N'28', N'Lắc tay vàng', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (68, CAST(N'2025-02-09T08:04:16.5262110+00:00' AS DateTimeOffset), N'29', N'vòng tay đính ruby', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (69, CAST(N'2025-02-09T08:07:09.3512100+00:00' AS DateTimeOffset), N'30', N'Mặt dây khi khí cầu', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (70, CAST(N'2025-02-09T08:08:37.4693110+00:00' AS DateTimeOffset), N'31', N'Mặt dây chuyền hoa hồng RUBY', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (71, CAST(N'2025-02-09T08:09:29.9140270+00:00' AS DateTimeOffset), N'31', N'Mặt dây chuyền hoa hồng RUBY', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (72, CAST(N'2025-02-09T08:09:41.4033820+00:00' AS DateTimeOffset), N'30', N'Mặt dây khi khí cầu', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (73, CAST(N'2025-02-09T08:09:57.3044070+00:00' AS DateTimeOffset), N'29', N'vòng tay đính ruby', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (74, CAST(N'2025-02-09T08:10:13.4073640+00:00' AS DateTimeOffset), N'28', N'Lắc tay vàng', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (75, CAST(N'2025-02-09T08:10:26.9332750+00:00' AS DateTimeOffset), N'27', N'Lắc tay bạc đính kim cương', 2, N'[{"changed": {"fields": ["Ch\u1ea5t li\u1ec7u", "\u0110\u00e1 ph\u1ee5", "\u0110\u00e1 t\u00e2m"]}}]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (76, CAST(N'2025-02-09T08:10:31.2258990+00:00' AS DateTimeOffset), N'24', N'Bông tai Bạc đính Kim Cương', 2, N'[]', 12, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (77, CAST(N'2025-02-09T08:18:30.8944870+00:00' AS DateTimeOffset), N'1', N'Kim cương rời là gì? Có nên mua kim cương rời tại PNJ?', 1, N'[{"added": {}}]', 8, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (78, CAST(N'2025-02-09T08:22:27.9093970+00:00' AS DateTimeOffset), N'2', N'Quá trình kết tinh đá quý là gì & những lợi ích mà đá quý mang đến cho bạn', 1, N'[{"added": {}}]', 8, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (79, CAST(N'2025-02-09T08:23:16.9791410+00:00' AS DateTimeOffset), N'3', N'Nguồn gốc tạo nên tinh hoa của đá quý & những điều bạn chưa biết về đá quý', 1, N'[{"added": {}}]', 8, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (80, CAST(N'2025-02-09T08:24:38.7156290+00:00' AS DateTimeOffset), N'4', N'Hướng dẫn đo size, kích cỡ nhẫn', 1, N'[{"added": {}}]', 8, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (81, CAST(N'2025-02-09T08:25:31.8146290+00:00' AS DateTimeOffset), N'5', N'Bạn đã biết 8 sự thật về kim cương, nữ hoàng của đá quý này chưa?', 1, N'[{"added": {}}]', 8, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (82, CAST(N'2025-02-09T08:26:28.8073560+00:00' AS DateTimeOffset), N'6', N'Màu sắc đá quý, đá bán quý', 1, N'[{"added": {}}]', 8, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (83, CAST(N'2025-02-09T08:30:32.1167540+00:00' AS DateTimeOffset), N'32', N'Cubic-Zirconia', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (84, CAST(N'2025-02-09T08:31:18.8828440+00:00' AS DateTimeOffset), N'33', N'Kim cương', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (85, CAST(N'2025-02-09T08:31:46.5471560+00:00' AS DateTimeOffset), N'34', N'Ruby đỏ', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (86, CAST(N'2025-02-09T08:32:36.2291280+00:00' AS DateTimeOffset), N'35', N'Emerald ngọc lục bảo', 1, N'[{"added": {}}]', 9, 6)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (87, CAST(N'2025-02-09T08:33:23.9714860+00:00' AS DateTimeOffset), N'36', N'Moissanite', 1, N'[{"added": {}}]', 9, 6)
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'account', N'profile')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'auth', N'user')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'contenttypes', N'contenttype')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (15, N'design', N'design')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (16, N'design', N'thietke')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'home', N'blog')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'home', N'customer')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'home', N'oder')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'home', N'product')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (12, N'home', N'product_details')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (19, N'management', N'chinhsach')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (20, N'management', N'giavatlieu')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (22, N'management', N'management')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (21, N'management', N'policy')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (17, N'production', N'production')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (18, N'production', N'tiendosanxuat')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (14, N'sales', N'baogia')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (13, N'sales', N'sales')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'sessions', N'session')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'contenttypes', N'0001_initial', CAST(N'2025-02-06T06:12:18.6804370+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2025-02-06T06:12:20.0208560+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'auth', N'0001_initial', CAST(N'2025-02-06T06:12:20.0750630+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2025-02-06T06:12:20.0898120+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'auth', N'0003_alter_user_email_max_length', CAST(N'2025-02-06T06:12:20.1036390+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'auth', N'0004_alter_user_username_opts', CAST(N'2025-02-06T06:12:20.1172840+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'auth', N'0005_alter_user_last_login_null', CAST(N'2025-02-06T06:12:20.6503720+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0006_require_contenttypes_0002', CAST(N'2025-02-06T06:12:20.6567740+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2025-02-06T06:12:20.6621520+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'auth', N'0008_alter_user_username_max_length', CAST(N'2025-02-06T06:12:22.2755240+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2025-02-06T06:12:22.2868760+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'auth', N'0010_alter_group_name_max_length', CAST(N'2025-02-06T06:12:23.9147030+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0011_update_proxy_permissions', CAST(N'2025-02-06T06:12:23.9225940+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'auth', N'0012_alter_user_first_name_max_length', CAST(N'2025-02-06T06:12:23.9343450+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'account', N'0001_initial', CAST(N'2025-02-06T06:12:23.9538700+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'account', N'0002_alter_profile_vai_tro', CAST(N'2025-02-06T06:12:23.9627430+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'admin', N'0001_initial', CAST(N'2025-02-06T06:12:23.9834330+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2025-02-06T06:12:23.9936820+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2025-02-06T06:12:24.0035000+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'home', N'0001_initial', CAST(N'2025-02-06T06:12:24.0478970+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'design', N'0001_initial', CAST(N'2025-02-06T06:12:24.0726680+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'management', N'0001_initial', CAST(N'2025-02-06T06:12:24.0960130+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'production', N'0001_initial', CAST(N'2025-02-06T06:12:24.1278420+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (24, N'sales', N'0001_initial', CAST(N'2025-02-06T06:12:24.1604090+00:00' AS DateTimeOffset))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (25, N'sessions', N'0001_initial', CAST(N'2025-02-06T06:12:24.1725130+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'nuf1xx5n5axh98eblzaraurucqaga2lt', N'e30:1tfvPh:O8MUUGDUoKu4yglYZVRLHT-e9XDvDhjRnNAZSVyXMIE', CAST(N'2025-02-20T06:31:01.0395270+00:00' AS DateTimeOffset))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'r7kmhms4bg2v5a2d1bh5tbfiet9lgsc3', N'.eJxVy8EKAiEQgOF38RyLrjo6HYOeQ8ZxxKXaINdT9O4V7KGu_8f_VInG1tLo8khLUUeF6vDbMvFF1i8Q832s27SXPp1vtFxPu_9NjXr7HBmMn4VCdVJLgKyZXWUBg9WQhRisZgeY0WnASN4G6yQW48tsMXpSrzcQSjMB:1th395:2l9TepbUuSO4FXNNqtwPeIBguxn9Ghcvzg37HPlDjR4', CAST(N'2025-02-23T08:58:31.6364050+00:00' AS DateTimeOffset))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'vjhp4ifwaql1rj8hep3m13diq3jbn8t5', N'.eJxVjE0OwiAYRO_C2pCWAi0u3XsG8v0pVQNJaVfGu1uSLjSZ1bw381YRtjXFrcoSZ1Zn5dXpt0Ogp-QG-AH5XjSVvC4z6qbog1Z9LSyvy-H-HSSoaV8P5KwzdpgCEhHcxPXci2fvR-MnDs6O2LUwBQGDndllYz2BEQGL6vMF4qs3-w:1tgE5x:o89FS7gL9HX0d1-HC_nB8fjGpli_NSKiR-70VhfThPw', CAST(N'2025-02-21T02:27:53.1683820+00:00' AS DateTimeOffset))
GO
SET IDENTITY_INSERT [dbo].[home_blog] ON 

INSERT [dbo].[home_blog] ([id], [title], [content], [image], [date]) VALUES (1, N'Kim cương rời là gì? Có nên mua kim cương rời tại PNJ?', N'Kim cương rời là gì?
Theo như nhiều chia sẻ, kim cương rời là những viên kim cương không được gắn lên sản phẩm, không có giấy tờ chứng minh nguồn gốc xuất xứ và không có giấy kiểm định. Hiểu thêm một cách khác, đây là dòng sản phẩm được khai thác từ thiên nhiên và được nhập về bán nhưng không có một đơn vị nào thẩm định. Với những lý do trên, kim cương rời thường có chi phí thấp hơn. Xem kim cương PNJ rời.

Tuy nhiên, việc mua sắm kim cương rời nhưng không thể kiểm tra nguồn có thể khiến bạn mua nhầm sản phẩm kém chất lượng, thậm chí là hàng giả.', N'blog/kim-cuong-roi-la-gi-co-nen-mua-kim-cuong-roi-tai-pnj-thumb1.jpg', CAST(N'2025-02-09T08:18:30.8838380+00:00' AS DateTimeOffset))
INSERT [dbo].[home_blog] ([id], [title], [content], [image], [date]) VALUES (2, N'Quá trình kết tinh đá quý là gì & những lợi ích mà đá quý mang đến cho bạn', N'Quá trình kết tinh đá quý là gì?
Đầu tiên, chúng ta cần hiểu kết tinh là gì. Đây là hiện tượng hóa cứng các phân tử hoặc nguyên tử trong một chất tạo thành dạng tinh thể có cấu trúc cao hơn. Ngoài ra, kết tinh còn được biết là kỹ thuật dùng để tách chất lỏng với rắn. Điều này có nghĩa là dung dịch ở trạng thái lỏng sang rắn và ở dạng tinh thể. Có rất nhiều cách để có được tinh thể: kết tủa trong dung dịch, sự lắng đọng của chất khí hoặc đông đặc của chất. Sự kết tinh xuất hiện còn phụ thuộc vào một số yếu tố như: áp suất không khí, nhiệt độ và thời điểm.

Một sự thật thú vị rằng, các loại đá quý được kết tinh ở các hệ tinh thể khác nhau; đây cũng là đặc điểm để chúng ta phân biệt được khoáng vật này với khoáng vật khác. Các hệ tinh thể bao gồm: lập phương, 4 phương, 3 phương, trục thoi, một nghiêng và tinh hệ 3 nghiêng.', N'blog/Qua-trinh-ket-tinh-da-quy-la-gi-Nhung-loi-ich-ma-da-quy-mang-den-cho-ban-thumb.jpg', CAST(N'2025-02-09T08:22:27.9030280+00:00' AS DateTimeOffset))
INSERT [dbo].[home_blog] ([id], [title], [content], [image], [date]) VALUES (3, N'Nguồn gốc tạo nên tinh hoa của đá quý & những điều bạn chưa biết về đá quý', N'Nguồn gốc tạo nên tinh hoa của đá quý
Cũng như các loại đá và khoáng vật, đa phần đá quý được hình thành trong quá trình địa chất tự nhiên. Các quá trình này đã, đang và diễn ra trong lòng đất, có tính chu kỳ và quan hệ mật thiết với nhau, được gọi là chu trình tạo khoáng.

Trái Đất của chúng ta được hình thành qua nhiều lớp vỏ, theo thứ tự: vỏ, Manti, nhân ngoài và nhân trong. Hầu hết những viên đá óng ánh xuất hiện tại phần trên Manti (sâu so với bề mặt trái đất khoảng 60km) nhưng tập trung chủ yếu ở lớp vỏ.', N'blog/Nguon-goc-tao-nen-tinh-hoa-cua-da-quy-nhung-dieu-ban-chua-biet-ve-da-quy-thumb-2.jpg', CAST(N'2025-02-09T08:23:16.9760410+00:00' AS DateTimeOffset))
INSERT [dbo].[home_blog] ([id], [title], [content], [image], [date]) VALUES (4, N'Hướng dẫn đo size, kích cỡ nhẫn', N'Đo bằng tờ giấy & thước
Bước 1: Chuẩn bị một cây thước, 1 cây kéo, 1 cây bút & một tờ giấy

Bước 2: Cắt một mảnh giấy dài khoảng 10 cm và rộng 1 cm.

Bước 3: Sử dụng đoạn giấy vừa cắt để quấn sát quanh ngón tay muốn đo.

Bước 4: Đánh dấu điểm giao nhau.

Bước 5: Tháo ra dùng thước đo chiều dài của đoạn giấy từ điểm đầu cho đến phần đánh dấu. Lấy kết quả đo được chia cho 3,14. Sau đó đối chiếu với Bảng size nhẫn.', N'blog/huong-dan-do-size-nhan-1920x1440.jpg', CAST(N'2025-02-09T08:24:38.7110570+00:00' AS DateTimeOffset))
INSERT [dbo].[home_blog] ([id], [title], [content], [image], [date]) VALUES (5, N'Bạn đã biết 8 sự thật về kim cương, nữ hoàng của đá quý này chưa?', N'Chỉ có kim cương cắt được kim cương
Trong văn hoá người Hy Lạp, từ kim cương bắt nguồn từ “adamas” nghĩa là không thể phá huỷ. Trên thang đo độ cứng Moh, kim cương đạt điểm 10/10 (Sapphire và Ruby đạt điểm 9/10), nghĩa là tinh thể trong suốt này có độ cứng vô song. Đặc biệt, chỉ có kim cương mới có thể làm trầy xước kim cương.
Kim cương không tỏa sáng

Nhiều người thường nghĩ rằng kim cương tự phát ra ánh sáng hay tỏa sáng như lời bài hát của ca sĩ Rihanna – Shine bright like a diamond. Nhưng thực tế, tinh thể này phản chiếu ánh sáng chứ không phải tỏa sáng. Giải thích một cách khoa học như sau: Vệt sáng chiếu lên kim cương, một phần ánh sáng phản chiếu trên bề mặt kim cương, gọi là phản chiếu bên ngoài. Phần khác của ánh sáng nhập vào trong viên kim cương và đổi hướng do mật độ cảm quang quá lớn của kim cương, được gọi là khúc xạ. Ánh sáng sau đó phản chiếu ở mặt trong của kim cương được gọi là phản chiếu bên trong.', N'blog/Ban-da-biet-ve-8-su-that-ve-kim-cuong-nu-hoang-cua-da-quy-nay-chua.jpg', CAST(N'2025-02-09T08:25:31.8087980+00:00' AS DateTimeOffset))
INSERT [dbo].[home_blog] ([id], [title], [content], [image], [date]) VALUES (6, N'Màu sắc đá quý, đá bán quý', N'Cắt mài (Cut)
Để có được một viên đá đẹp sau khi chế tác thợ cắt mài phải kiểm tra tinh thể thô rất cẩn thận trước khi tiến hành bước đầu tiên của quá trình cắt mài. Mỗi mẫu đá thô có một dạng phân bố màu (hàm lượng và vị trí của màu trong tinh thể) đặc trưng của nó. Ví dụ: màu xanh dương trong Sapphire thô có thể chỉ nằm tại hai chóp tinh thể.

Một mẫu đá thô có màu đều đặn có thể mài thành những viên đá có màu khác nhau phụ thuộc vào kích thước và tỉ lệ cắt mài của viên đá sau khi mài. Ví dụ: một viên Topaz thô có màu hồng nhạt chỉ có thể mài thành một viên đá có màu đẹp khi nó có kích thước đủ lớn. Vì vậy khi gặp những loại này thợ cắt mài phải cắt thành một viên đá lớn, màu đậm thay vì cắt thành một số viên nhỏ có tỉ lệ cắt mài chuẩn nhưng có màu nhạt hơn. Đối với những viên đá thô có màu phân bố thành từng lớp song song với những mặt tinh thể hoặc nằm gần bề mặt của tinh thể. Để có được những viên đá có màu đẹp nhất (mà viên đá đó có thể) sau khi mài khi nhìn viên đá từ trên mặt thì thợ cắt mài phải định hướng sao cho những lớp màu phải song song với gờ hoặc đặt phần màu đậm ở chóp đáy (culet) của viên đá được mài giác.', N'blog/mau-sac-da-quy-da-ban-quy.jpg', CAST(N'2025-02-09T08:26:28.7981860+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[home_blog] OFF
GO
SET IDENTITY_INSERT [dbo].[home_oder] ON 

INSERT [dbo].[home_oder] ([id], [date_oder], [status], [quantity], [customer_id], [product_id]) VALUES (2, CAST(N'2025-02-09T08:58:42.5186470+00:00' AS DateTimeOffset), N'DangXuLy', 1, NULL, 37)
SET IDENTITY_INSERT [dbo].[home_oder] OFF
GO
SET IDENTITY_INSERT [dbo].[home_product] ON 

INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (1, N'Bộ trang sức Vàng 14K đính đá Tourmaline', 899000000, N'product/14k.jpg', N'product/vong14k.jpg', N'product/daychuyen14k.jpg', N'product/nhan14k.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (2, N'Bộ trang sức Vàng 18K đính đá Citrine', 499999000, N'product/bosuutap18k.jpg', N'product/daychuyen18k.jpg', N'product/nhan18k.jpg', N'product/vong18k.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (3, N'Bộ trang sức Xanh trắng 14K đính đá Tanzanite', 599999000, N'product/bosuutapxanh.jpg', N'product/daychuyenxanh.jpg', N'product/nhanhxanh.jpg', N'product/vongtayxanh.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (4, N'Bộ sưu tập mùa xuân', 399999000, N'product/bosuutapxuan_aSruNdb.jpg', N'product/vongdinhhoaxuan_eWqo1cA.jpg', N'product/vongxuan_zKdhosQ.jpg', N'product/daychuyenxuan_s4hd9yr.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (5, N'Bộ sưu tập trang sức đá xanh', 299999000, N'product/trangsuccbien.jpg', N'product/nhanbien.jpg', N'product/vongbien.jpg', N'product/vongtaybien.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (6, N'Bộ trang sức Vàng Trắng', 199999000, N'product/trangsucangtrang.jpg', N'product/vongcotrang.jpg', N'product/vongtay.jpg', N'product/nhantrang.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (7, N'Bộ trang sức Vàng Trắng đính Kim Cương', 499999000, N'product/trangsucvangtrang.jpg', N'product/vongtaitrang.jpg', N'product/vong2.jpg', N'product/nhantrang_GC0kKHI.jpg', N'collection', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (8, N'Nhẫn đính Kim Cương Nam/Nữ', 59999000, N'product/nhankimcuong.jpg', N'product/nhan.jpg', N'product/kimcuong.jpg', N'', N'ring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (9, N'Nhẫn bạc Nam', 19999000, N'product/nhannam.jpg', N'product/nhan_lzPFQy6.jpg', N'product/1.jpg', N'', N'ring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (10, N'Nhẫn hoa vàng cho Nữ', 10999000, N'product/nhanvang.jpg', N'product/nhan1.jpg', N'product/nhan_me4p21B.jpg', N'', N'ring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (11, N'Nhẫn mũi tên bạc', 15999000, N'product/muitenbac.jpg', N'product/muiten2.jpg', N'', N'', N'ring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (12, N'Nhẫn Kim Cương đính đá Ruby', 25999000, N'product/nhanbac2mau2.jpg', N'product/nhanbac2mau.jpg', N'', N'', N'ring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (13, N'Nhẫn vàng đính Cubic Zirconia', 9990000, N'product/vangden2.jpg', N'product/nhanvangden.jpg', N'', N'', N'ring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (14, N'Nhẫn Bạch Kim đính ruby', 8999000, N'product/nhannno.jpg', N'product/nhanno22.jpg', N'', N'', N'ring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (15, N'Bông tai ngọc trai', 2999000, N'product/ngoctrai.jpg', N'product/1_KymSKfN.jpg', N'product/mauu.jpg', N'', N'earring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (16, N'Bông tai Ngọc lục bảo', 4999000, N'product/ruby.jpg', N'product/bongtayruby.jpg', N'product/mauruby.jpg', N'', N'earring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (17, N'Bông tai Bạc', 3999000, N'product/bongtay.jpg', N'product/bac.jpg', N'product/on-gb0000w002727-bong-tai-vang-trang-y-18k-pnj-1.jpg', N'', N'earring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (18, N'Bông tai vàng đính Ruby xanh đại dương', 4999000, N'product/bongtaydaxanh.jpg', N'product/daxanh.jpg', N'product/on-sbxmxmy060039-bong-tai-bac-dinh-da-pnjsilver-2.jpg', N'', N'earring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (19, N'Bông tai hình thoi bạch kim', 5999000, N'product/hinhthoi.jpg', N'product/1_OxLTQGc.jpg', N'product/on-gbtpxmw000281-bong-tai-vang-14k-dinh-da-topaz-pnj-1.jpg', N'', N'earring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (20, N'Bông tai đôi môi đỏ thẩm', 3999000, N'product/bongtayla.jpg', N'product/la2.jpg', N'product/on-sbzt00w000034-bong-tai-bac-dinh-da-style-by-pnj-bisou-2.jpg', N'', N'earring', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (21, N'Bông tai Ngọc lục bảo vòng quay may mắn', 3599000, N'product/bongtai3d1_qbwrNUU.jpg', N'product/pngtrpnt_763617c01_v2_rgb_0fa0efaa33c94dfeb45181d80e6bdf5e_master_sVntfRf.webp', N'', N'', N'earring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (22, N'Bông tai hoa Hồng', 1999000, N'product/hoatai2.jpg', N'product/hoatai.jpg', N'', N'', N'earring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (23, N'Bông tai hoa Vàng mùa thu', 3999000, N'product/hoataivang.jpg', N'product/hoatavang2.jpg', N'', N'', N'earring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (24, N'Bông tai Bạc đính Kim Cương', 6999000, N'product/hoataibac.jpg', N'product/hoataibac2.jpg', N'', N'', N'earring', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (27, N'Lắc tay bạc đính kim cương', 1990000, N'product/lactay.jpg', N'product/1_gZ4AOYV.jpg', N'product/mau.jpg', N'', N'bracelet', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (28, N'Lắc tay vàng', 1199000, N'product/lacvang.jpg', N'product/lacvang1.jpg', N'product/on-gl0000y004355-lac-tay-vang-24k-pnj-1.jpg', N'', N'bracelet', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (29, N'vòng tay đính ruby', 2000000, N'product/vongtay_BlFW5PG.jpg', N'product/1_6f3mStG.jpg', N'product/on-glrbxmy000200-lac-tay-vang-18k-dinh-da-ruby-pnj-1.jpg', N'', N'bracelet', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (30, N'Mặt dây khi khí cầu', 5999000, N'product/khinhkhicau1.jpg', N'product/khinhkhicau.jpg', N'product/vongcokhinhkhinhcau.jpg', N'', N'pendant', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (31, N'Mặt dây chuyền hoa hồng RUBY', 1299000, N'product/hoatai_bDJPy9Y.jpg', N'product/hoatai2_PjQGXpe.jpg', N'product/vong.jpg', N'', N'pendant', N'design_3d')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (32, N'Cubic-Zirconia', 1999000, N'product/Cubic-Zirconia.jpg', N'', N'', N'', N'gemstone', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (33, N'Kim cương', 9999000, N'product/da-quy-lam-trang-suc3.jpg', N'', N'', N'', N'gemstone', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (34, N'Ruby đỏ', 5999000, N'product/da-ruby.jpg', N'', N'', N'', N'gemstone', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (35, N'Emerald ngọc lục bảo', 4990000, N'product/emerald-ngoc-luc-bao.jpg', N'', N'', N'', N'gemstone', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (36, N'Moissanite', 4990000, N'product/moi.jpg', N'', N'', N'', N'gemstone', N'design_img')
INSERT [dbo].[home_product] ([id], [name], [price], [image_1], [image_2], [image_3], [image_4], [type], [design]) VALUES (37, N'Yêu cầu gia công - None', 0, N'', N'', N'', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[home_product] OFF
GO
SET IDENTITY_INSERT [dbo].[home_product_details] ON 

INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (1, N'silver', N'pendant', N'Cubic Zirconia', N'Ruby', NULL, N'', 1)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (2, N'gold', N'earring', N'Moissanite', N'Emerald', NULL, N'', 2)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (3, N'silver', N'bracelet', N'Cubic Zirconia', N'Emerald', NULL, N'', 3)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (4, N'gold', N'bracelet', N'Moissanite', N'Ruby', NULL, N'', 4)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (5, N'platinum', N'pendant', N'Moissanite', N'Ruby', NULL, N'', 5)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (6, N'platinum', N'ring', N'Cubic Zirconia', NULL, NULL, N'', 6)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (7, N'platinum', N'ring', N'Cubic Zirconia', N'Emerald', NULL, N'', 7)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (8, N'gold', NULL, N'Moissanite', NULL, NULL, N'', 8)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (9, N'silver', NULL, N'Moissanite', NULL, NULL, N'', 9)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (10, N'gold', NULL, NULL, NULL, NULL, N'', 10)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (11, N'silver', NULL, N'Cubic Zirconia', NULL, NULL, N'', 11)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (12, N'silver', NULL, N'Moissanite', N'Ruby', NULL, N'', 12)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (13, N'gold', NULL, N'Moissanite', NULL, NULL, N'', 13)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, 15)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (16, N'platinum', NULL, NULL, N'Emerald', NULL, N'', 16)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (17, N'platinum', NULL, N'Moissanite', NULL, NULL, N'', 17)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (18, N'gold', NULL, NULL, N'Ruby', NULL, N'', 18)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (19, N'platinum', NULL, NULL, N'Ruby', NULL, N'', 19)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (20, N'gold', NULL, N'Cubic Zirconia', N'Ruby', NULL, N'', 20)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (21, N'gold', NULL, NULL, N'Emerald', NULL, N'', 21)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (22, N'silver', NULL, NULL, N'Ruby', NULL, N'', 22)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (23, N'gold', NULL, N'Cubic Zirconia', N'Ruby', NULL, N'', 23)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (24, N'silver', NULL, N'Moissanite', NULL, NULL, N'', 24)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (27, N'silver', NULL, N'Moissanite', N'Emerald', NULL, N'', 27)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (28, N'gold', NULL, N'Cubic Zirconia', N'Emerald', NULL, N'', 28)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (29, N'platinum', NULL, N'Cubic Zirconia', N'Ruby', NULL, N'', 29)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (30, N'gold', NULL, N'Cubic Zirconia', N'Ruby', NULL, N'', 30)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (31, N'platinum', NULL, NULL, N'Ruby', NULL, N'', 31)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, 32)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, 33)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, 34)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, 35)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (36, NULL, NULL, NULL, NULL, NULL, NULL, 36)
INSERT [dbo].[home_product_details] ([id], [material], [TrangSucDinhKem], [Daphu], [DaTam], [Size], [Describe], [product_id]) VALUES (37, NULL, NULL, NULL, NULL, NULL, N'', 37)
SET IDENTITY_INSERT [dbo].[home_product_details] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq] ON [dbo].[auth_permission]
(
	[content_type_id] ASC,
	[codename] ASC
)
WHERE ([content_type_id] IS NOT NULL AND [codename] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_user_username_6821ab7c_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
ALTER TABLE [dbo].[auth_user] ADD  CONSTRAINT [auth_user_username_6821ab7c_uniq] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_group_id_97559544]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_group_id_97559544] ON [dbo].[auth_user_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_6a12ed8b]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_user_id_6a12ed8b] ON [dbo].[auth_user_groups]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_group_id_94350c0c_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_groups_user_id_group_id_94350c0c_uniq] ON [dbo].[auth_user_groups]
(
	[user_id] ASC,
	[group_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_permission_id_1fbb5f2c]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_permission_id_1fbb5f2c] ON [dbo].[auth_user_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_a95ead1b]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_a95ead1b] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC,
	[permission_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [design_design_name_id_1ecc9fda_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [design_design_name_id_1ecc9fda_uniq] ON [dbo].[design_design]
(
	[name_id] ASC
)
WHERE ([name_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [design_thietke_nameProduct_id_1151a96e_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [design_thietke_nameProduct_id_1151a96e_uniq] ON [dbo].[design_thietke]
(
	[nameProduct_id] ASC
)
WHERE ([nameProduct_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [home_customer_user_id_8f6b40c6_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [home_customer_user_id_8f6b40c6_uniq] ON [dbo].[home_customer]
(
	[user_id] ASC
)
WHERE ([user_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [home_oder_customer_id_585ea781]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [home_oder_customer_id_585ea781] ON [dbo].[home_oder]
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [home_oder_product_id_7d3c7b88]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [home_oder_product_id_7d3c7b88] ON [dbo].[home_oder]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [home_product_details_product_id_f9b086bf_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [home_product_details_product_id_f9b086bf_uniq] ON [dbo].[home_product_details]
(
	[product_id] ASC
)
WHERE ([product_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [management_management_name_id_41e1ff57_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [management_management_name_id_41e1ff57_uniq] ON [dbo].[management_management]
(
	[name_id] ASC
)
WHERE ([name_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [production_production_name_id_eead6ef4_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [production_production_name_id_eead6ef4_uniq] ON [dbo].[production_production]
(
	[name_id] ASC
)
WHERE ([name_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [production_tiendosanxuat_nameProduct_id_1b8c7959_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [production_tiendosanxuat_nameProduct_id_1b8c7959_uniq] ON [dbo].[production_tiendosanxuat]
(
	[nameProduct_id] ASC
)
WHERE ([nameProduct_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__sales_ba__47027DF4702F6981]    Script Date: 2/9/2025 4:04:11 PM ******/
ALTER TABLE [dbo].[sales_baogia] ADD UNIQUE NONCLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sales_baogia_sales_id_e2babb00]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE NONCLUSTERED INDEX [sales_baogia_sales_id_e2babb00] ON [dbo].[sales_baogia]
(
	[sales_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sales_sales_user_id_4542c1a1_uniq]    Script Date: 2/9/2025 4:04:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [sales_sales_user_id_4542c1a1_uniq] ON [dbo].[sales_sales]
(
	[user_id] ASC
)
WHERE ([user_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account_profile]  WITH CHECK ADD  CONSTRAINT [account_profile_user_id_bdd52018_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[account_profile] CHECK CONSTRAINT [account_profile_user_id_bdd52018_fk_auth_user_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[design_design]  WITH CHECK ADD  CONSTRAINT [design_design_name_id_1ecc9fda_fk_auth_user_id] FOREIGN KEY([name_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[design_design] CHECK CONSTRAINT [design_design_name_id_1ecc9fda_fk_auth_user_id]
GO
ALTER TABLE [dbo].[design_thietke]  WITH CHECK ADD  CONSTRAINT [design_thietke_nameProduct_id_1151a96e_fk_home_product_id] FOREIGN KEY([nameProduct_id])
REFERENCES [dbo].[home_product] ([id])
GO
ALTER TABLE [dbo].[design_thietke] CHECK CONSTRAINT [design_thietke_nameProduct_id_1151a96e_fk_home_product_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id]
GO
ALTER TABLE [dbo].[home_customer]  WITH CHECK ADD  CONSTRAINT [home_customer_user_id_8f6b40c6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[home_customer] CHECK CONSTRAINT [home_customer_user_id_8f6b40c6_fk_auth_user_id]
GO
ALTER TABLE [dbo].[home_oder]  WITH CHECK ADD  CONSTRAINT [home_oder_customer_id_585ea781_fk_home_customer_id] FOREIGN KEY([customer_id])
REFERENCES [dbo].[home_customer] ([id])
GO
ALTER TABLE [dbo].[home_oder] CHECK CONSTRAINT [home_oder_customer_id_585ea781_fk_home_customer_id]
GO
ALTER TABLE [dbo].[home_oder]  WITH CHECK ADD  CONSTRAINT [home_oder_product_id_7d3c7b88_fk_home_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[home_product] ([id])
GO
ALTER TABLE [dbo].[home_oder] CHECK CONSTRAINT [home_oder_product_id_7d3c7b88_fk_home_product_id]
GO
ALTER TABLE [dbo].[home_product_details]  WITH CHECK ADD  CONSTRAINT [home_product_details_product_id_f9b086bf_fk_home_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[home_product] ([id])
GO
ALTER TABLE [dbo].[home_product_details] CHECK CONSTRAINT [home_product_details_product_id_f9b086bf_fk_home_product_id]
GO
ALTER TABLE [dbo].[management_management]  WITH CHECK ADD  CONSTRAINT [management_management_name_id_41e1ff57_fk_auth_user_id] FOREIGN KEY([name_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[management_management] CHECK CONSTRAINT [management_management_name_id_41e1ff57_fk_auth_user_id]
GO
ALTER TABLE [dbo].[production_production]  WITH CHECK ADD  CONSTRAINT [production_production_name_id_eead6ef4_fk_auth_user_id] FOREIGN KEY([name_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[production_production] CHECK CONSTRAINT [production_production_name_id_eead6ef4_fk_auth_user_id]
GO
ALTER TABLE [dbo].[production_tiendosanxuat]  WITH CHECK ADD  CONSTRAINT [production_tiendosanxuat_nameProduct_id_1b8c7959_fk_home_product_id] FOREIGN KEY([nameProduct_id])
REFERENCES [dbo].[home_product] ([id])
GO
ALTER TABLE [dbo].[production_tiendosanxuat] CHECK CONSTRAINT [production_tiendosanxuat_nameProduct_id_1b8c7959_fk_home_product_id]
GO
ALTER TABLE [dbo].[sales_baogia]  WITH CHECK ADD  CONSTRAINT [sales_baogia_product_id_aad348c8_fk_home_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[home_product] ([id])
GO
ALTER TABLE [dbo].[sales_baogia] CHECK CONSTRAINT [sales_baogia_product_id_aad348c8_fk_home_product_id]
GO
ALTER TABLE [dbo].[sales_baogia]  WITH CHECK ADD  CONSTRAINT [sales_baogia_sales_id_e2babb00_fk_sales_sales_id] FOREIGN KEY([sales_id])
REFERENCES [dbo].[sales_sales] ([id])
GO
ALTER TABLE [dbo].[sales_baogia] CHECK CONSTRAINT [sales_baogia_sales_id_e2babb00_fk_sales_sales_id]
GO
ALTER TABLE [dbo].[sales_sales]  WITH CHECK ADD  CONSTRAINT [sales_sales_user_id_4542c1a1_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[sales_sales] CHECK CONSTRAINT [sales_sales_user_id_4542c1a1_fk_auth_user_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
USE [master]
GO
ALTER DATABASE [DatGiaCongTrangSuc] SET  READ_WRITE 
GO
