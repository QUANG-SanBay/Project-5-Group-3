let position = 'sales';

//chỉnh sửa form
function toggleForm() {
    const input = document.querySelectorAll('.form-input-seclect');
    const inputTera = document.querySelector('.form-input');
    input.forEach(item => {
        item.disabled = !item.disabled;
    });
    inputTera.disabled = !inputTera.disabled;
}

//chỉnh sửa giá
document.addEventListener('DOMContentLoaded', () => {
    const formPriceEditButton = document.querySelector('.form-price-edit');
    const formPrice = formPriceEditButton.closest('form');

    formPrice.addEventListener('submit', (event) => {
        event.preventDefault();
        toggleFormPrice();
    });
    calcPrice()
});

function toggleFormPrice() {
    const input = document.querySelectorAll('.form-price-input');
    input.forEach(item => {
        item.disabled = !item.disabled;
    });
}
//tính giá
function calcPrice() {
    const priceInput = document.querySelectorAll('.form-price-input');
    let value = document.querySelector('.order__value-input');
    value.value = 0+'đ';
    priceInput.forEach((item,index,arr) => {
        item.addEventListener('input', () => {
            console.log(arr[0].value * arr[1].value + arr[2].value + arr[3].value);
            if(item.value.trim() !== ''){
                let total = parseFloat(arr[0].value) * parseFloat(arr[1].value) + parseFloat(arr[2].value) + parseFloat(arr[3].value);
                value.value = total.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }).replace('₫', 'đ');   
            }
        });
    });
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


