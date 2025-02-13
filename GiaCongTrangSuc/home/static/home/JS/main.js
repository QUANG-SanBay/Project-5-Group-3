let position = 'user' ;


let cateLinkElm = document.querySelectorAll('.category__item-link');
// stopEvClicks(cateLinkElm);
clickOpen('.mess__btn','.mess__card');
plusMinusVlaue('.confirms__quantity')

function stopEvClicks(selector){

    if(selector instanceof NodeList){
        selector.forEach(element => {
            stopEvClick(element);
        });
    }
    else{
        stopEvClick(selector);

    }

    function stopEvClick(selector){
        selector.addEventListener('click',(e) => {
            e.preventDefault();
        })
    }
}
// tính giá
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
// function toggleInput() {
//     const input = document.querySelector('.order__value-input');
//     input.disabled = !input.disabled;
// }
/* <button class="order__value-edit" onclick="toggleInput()">Chỉnh sửa</button> */

//test
//*********bên design********//
// const imgPrListItems = document.querySelectorAll('.order__imgPr-list-item img');
// const mainImg = document.querySelector('.order__imgPr-main-item');

// imgPrListItems.forEach(item => {
//     item.addEventListener('click', () => {
//         mainImg.src = item.src;
//     });
// });

//*********bên production********//

const imgPrListItems = document.querySelectorAll('.order__imgPr-list-item img');
const mainImg = document.querySelector('.order__imgPr-main-item');
const fileInput = document.createElement('input');
fileInput.type = 'file';
fileInput.accept = 'image/*';
fileInput.style.display = 'none';

document.body.appendChild(fileInput);

imgPrListItems.forEach(item => {
    item.addEventListener('click', () => {
        mainImg.src = item.src;
    });

    item.addEventListener('dblclick', () => {
        fileInput.click();
        fileInput.onchange = (e) => {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = (event) => {
                    item.src = event.target.result;
                    mainImg.src = event.target.result;
                };
                reader.readAsDataURL(file);
            }
        };
    });
});


document.getElementById('sendBtn').addEventListener('click', function() {
    const messInput = document.getElementById('messInput');
    const messBody = document.getElementById('messBody');

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