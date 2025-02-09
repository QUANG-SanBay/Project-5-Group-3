var FormElm = document.getElementById('form-1');
var userName = document.getElementById('full-name');
var userEmail = document.getElementById('form-email');
var userPass = document.getElementById('form-password');
var rePass = document.getElementById('password-comfirmation');
var formBtn = FormElm.querySelector('.form-btn');
var formBtn_it = FormElm.querySelector('.form-btn__it');
var rules = [
    userName,
    userEmail,
    userPass,
    rePass
]
var userData;

function validator(FormEl) {
    rules.forEach(function(value , index) {
        var errElm = FormEl.querySelectorAll('.form-mess');
        var form_gr = FormEl.querySelectorAll('.form-group');
        var form_label = FormEl.querySelectorAll('.form-label');
        value.onblur = function(e) {
            validateField(index,value,errElm,form_gr,form_label);
        }
    })

    function validateField(index,input,errElm,form_gr,form_label) {
        var succes =true;
        if(isRequire(input.value)) {
            errElm[index].innerText = `vui lòng nhập trường "${form_label[index].innerText}".`;
            form_gr[index].classList.add('invalid');
            succes = false;
        }
        else if(form_label[index].innerText === 'Email' && isEmail(input.value)){
            errElm[index].innerText = `Trường này phải là ${form_label[index].innerText}.`;
            form_gr[index].classList.add('invalid');
            succes = false;
        }
        else if(form_label[index].innerText === 'Nhập lại mật khẩu' && isRePassWord(userPass.value,input.value)){
            errElm[index].innerText = `${form_label[index].innerText} không hợp lệ.`;
            form_gr[index].classList.add('invalid');
            succes = false;
        }
        else{
            errElm[index].innerText = '';
            form_gr[index].classList.remove('invalid');
        }
        return succes;
    }
    function isRequire(value) {
        return value.trim() ? undefined : true;
    }
    function isEmail(value) {
        var regex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return regex.test(value) ? undefined : true;
    }
    function isRePassWord(valuePass,valueRePass) {
        return valuePass === valueRePass ? undefined : true;
    }
    formBtn_it.addEventListener('click' , function(e) {
        var issucces;
        rules.forEach(function(vl , index) {
            var errElm = FormElm.querySelectorAll('.form-mess');
            var form_gr = FormElm.querySelectorAll('.form-group');
            var form_label = FormElm.querySelectorAll('.form-label');
            issucces = validateField(index,vl,errElm,form_gr,form_label);
        })
        if(issucces){
            userData = {
                Name: userName.value,
                Email: userEmail.value,
                Password: userPass.value,
            }
        }
        else{
            e.preventDefault();
        }
        console.log(userData);
    })
}



validator(FormElm);