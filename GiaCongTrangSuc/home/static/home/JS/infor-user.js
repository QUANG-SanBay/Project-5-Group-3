let userName = document.getElementById('username');
let fullName = document.getElementById('fullname');
let email = document.getElementById('email');
let phone = document.getElementById('phone');
let gender = document.getElementById('gender');

rules = [
    userName,
    fullName,
    email,
    phone,
    gender,
]
let formUser = document.getElementById('infor-form');
let btnSave = document.querySelector('.btn-save');
const validateForm = validator(formUser, rules);

formUser.addEventListener('submit', (e) => {
    if (!validateForm()) {
        e.preventDefault(); // Ngăn chặn gửi form nếu không hợp lệ
    } else {
        alert('Hoàn tất chỉnh sửa');
    }
});

function validateField(input, errElm, form_gr) {
    var success = true;
    if (isRequire(input.value)) {
        errElm.textContent = `Vui lòng nhập trường "${input.name}"`;
        form_gr.classList.add('invalid');
        success = false;
    } else if (input.name === 'Email' && isEmail(input.value)) {
        errElm.textContent = `Trường này phải là ${input.name}.`;
        form_gr.classList.add('invalid');
        success = false;
    } else if (input.name === 'Phone' && isPhone(input.value)) {
        errElm.textContent = `Trường này phải là ${input.name}.`;
        form_gr.classList.add('invalid');
        success = false;
    } else {
        errElm.textContent = '';
        form_gr.classList.remove('invalid');
    }
    return success;
}

function isRequire(value) {
    return value.trim() ? undefined : true;
}

function isPhone(value) {
    const phoneRegex = /^\d{10}$/; // Ví dụ: 10 chữ số
    return phoneRegex.test(value) ? undefined : true;
}

function isEmail(value) {
    var regex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return regex.test(value) ? undefined : true;
}

function validator(FormEl, rules) {
    rules.forEach(function(value, index) {
        var errElm = FormEl.querySelectorAll('.form-mess');
        var form_gr = FormEl.querySelectorAll('.form-groub');
        value.onblur = function(e) {
            validateField(value, errElm[index], form_gr[index]);
        }
    });

    return function() {
        var isSuccess = true;
        rules.forEach(function(value, index) {
            var errElm = FormEl.querySelectorAll('.form-mess');
            var form_gr = FormEl.querySelectorAll('.form-groub');
            if (!validateField(value, errElm[index], form_gr[index])) {
                isSuccess = false;
            }
        });
        return isSuccess;
    }
}