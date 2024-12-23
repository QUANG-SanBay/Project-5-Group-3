let position = 'sales';
clickOpen('.mess__btn','.mess__card');


//chỉnh sửa form
function toggleForm() {
    const input = document.querySelectorAll('.form-input-seclect');
    const inputTera = document.querySelector('.form-input');
    input.forEach(item => {
        item.disabled = !item.disabled;
    });
    inputTera.disabled = !inputTera.disabled;
}
function toggleInput() {
    const input = document.querySelector('.order__value-input');
    input.disabled = !input.disabled;
}
// chuyển đổi hình ảnh
const imgPrListItems = document.querySelectorAll('.order__imgPr-list-item img');
const mainImg = document.querySelector('.order__imgPr-main-item');

imgPrListItems.forEach(item => {
    item.addEventListener('click', () => {
        mainImg.src = item.src;
    });
});


//tin nhắn
document.getElementById('sendBtn').addEventListener('click', function() {
    const messInput = document.getElementById('messInput');
    const messBody = document.getElementById('messBody');
    console.log(messInput.value);

    if (messInput.value.trim() !== '') {
        const message = document.createElement('div');
        message.classList.add('message');
        message.classList.add(position);
        message.textContent = messInput.value;
        messBody.appendChild(message);

        // Clear the input
        messInput.value = '';
        messBody.scrollTop = messBody.scrollHeight;
    }
});
//mở tin nhắn
function clickOpen(selectorClicke, selectorOpen){
    const btn = document.querySelector(selectorClicke);
    const modal = document.querySelector(selectorOpen);
    btn.addEventListener('click', () => {
        if(modal.classList.contains('open')){
            modal.classList.remove('open');
        }else{
            modal.classList.add('open');
        }
    });

}
// tăng giảm số lượng
function plusMinusVlaue(selector){
    const btnPlus = document.querySelector(selector + ' #plus');
    const btnMinus = document.querySelector(selector + ' #minus');
    const value = document.querySelector(selector + ' .value');
    btnPlus.addEventListener('click', () => {
        value.textContent = parseInt(value.textContent) + 1;
    });
    btnMinus.addEventListener('click', () => {
        if(parseInt(value.textContent) > 1){
            value.textContent = parseInt(value.textContent) - 1;
        }
    });
}
