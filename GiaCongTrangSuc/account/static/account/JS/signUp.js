var FormElm = document.getElementById('form-1');
var userName = document.getElementById('full-name');
var userEmail = document.getElementById('form-email');
var userPass = document.getElementById('form-password');
var rePass = document.getElementById('password-comfirmation');
var formBtn_it = FormElm.querySelector('.form-btn__it');
var rules = [userName, userEmail, userPass, rePass];
var userData;

var validateForm = validator(FormElm, rules, userPass);

formBtn_it.addEventListener('click', function(e) {
    e.preventDefault();
    if (validateForm()) {
        userData = {
            Name: userName.value,
            Email: userEmail.value,
            Password: userPass.value,
        };
        console.log(userData);
    }
});