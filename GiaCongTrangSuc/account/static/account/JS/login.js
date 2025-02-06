// Lắng nghe sự kiện khi người dùng submit form
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('form-2'); // Lấy form theo ID
    const emailField = document.getElementById('login-email'); // Lấy trường email
    const passwordField = document.getElementById('login-password'); // Lấy trường mật khẩu

    form.addEventListener('submit', function(event) {
        let valid = true;

        // Kiểm tra email hợp lệ
        if (!validateEmail(emailField.value)) {
            valid = false;
            showError(emailField, 'Email không hợp lệ');
        } else {
            clearError(emailField);
        }

        // Kiểm tra mật khẩu
        if (passwordField.value.trim() === '') {
            valid = false;
            showError(passwordField, 'Mật khẩu không được để trống');
        } else {
            clearError(passwordField);
        }

        // Nếu không hợp lệ, ngừng gửi form
        if (!valid) {
            event.preventDefault();
        }
    });

    // Hàm kiểm tra tính hợp lệ của email
    function validateEmail(email) {
        const regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return regex.test(email);
    }

    // Hàm hiển thị lỗi cho trường nhập liệu
    function showError(input, message) {
        const errorElement = document.createElement('div');
        errorElement.classList.add('error-message');
        errorElement.innerText = message;
        input.parentElement.appendChild(errorElement);
    }

    // Hàm xóa lỗi khi người dùng sửa trường nhập liệu
    function clearError(input) {
        const errorElements = input.parentElement.querySelectorAll('.error-message');
        errorElements.forEach(function(element) {
            element.remove();
        });
    }
});
