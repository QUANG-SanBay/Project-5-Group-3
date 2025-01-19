document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("form-1");
    const fullName = document.getElementById("full-name");
    const email = document.getElementById("form-email");
    const password = document.getElementById("form-password");
    const passwordConfirmation = document.getElementById("password-comfirmation");

    form.addEventListener("submit", function (e) {
        let isValid = true;

        // Kiểm tra họ và tên
        if (fullName.value.trim() === "") {
            setError(fullName, "Họ và Tên không được để trống");
            isValid = false;
        } else {
            setSuccess(fullName);
        }

        // Kiểm tra email
        if (!validateEmail(email.value)) {
            setError(email, "Email không hợp lệ");
            isValid = false;
        } else {
            setSuccess(email);
        }

        // Kiểm tra mật khẩu
        if (password.value.length < 6) {
            setError(password, "Mật khẩu phải có ít nhất 6 ký tự");
            isValid = false;
        } else {
            setSuccess(password);
        }

        // Kiểm tra xác nhận mật khẩu
        if (password.value !== passwordConfirmation.value) {
            setError(passwordConfirmation, "Mật khẩu xác nhận không khớp");
            isValid = false;
        } else {
            setSuccess(passwordConfirmation);
        }

        if (!isValid) e.preventDefault(); // Ngăn form submit nếu có lỗi
    });

    function setError(input, message) {
        const formGroup = input.parentElement;
        const formMess = formGroup.querySelector(".form-mess");
        formMess.innerText = message;
        formMess.style.color = "red";
    }

    function setSuccess(input) {
        const formGroup = input.parentElement;
        const formMess = formGroup.querySelector(".form-mess");
        formMess.innerText = "";
    }

    function validateEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(String(email).toLowerCase());
    }
});
