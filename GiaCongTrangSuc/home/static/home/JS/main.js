let cateLinkElm = document.querySelectorAll('.category__item-link');
stopEvClicks(cateLinkElm);

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
function toggleInput() {
    const input = document.querySelector('.order__value-input');
    input.disabled = !input.disabled;
}
/* <button class="order__value-edit" onclick="toggleInput()">Chỉnh sửa</button> */

//test

const imgPrListItems = document.querySelectorAll('.order__imgPr-list-item img');
const mainImg = document.querySelector('.order__imgPr-main-item');

imgPrListItems.forEach(item => {
    item.addEventListener('click', () => {
        mainImg.src = item.src;
    });
});

//*********bên production********//

// const imgPrListItems = document.querySelectorAll('.order__imgPr-list-item img');
// const mainImg = document.querySelector('.order__imgPr-main-item');
// const fileInput = document.createElement('input');
// fileInput.type = 'file';
// fileInput.accept = 'image/*';
// fileInput.style.display = 'none';

// document.body.appendChild(fileInput);

// imgPrListItems.forEach(item => {
//     item.addEventListener('click', () => {
//         mainImg.src = item.src;
//     });

//     item.addEventListener('dblclick', () => {
//         fileInput.click();
//         fileInput.onchange = (e) => {
//             const file = e.target.files[0];
//             if (file) {
//                 const reader = new FileReader();
//                 reader.onload = (event) => {
//                     item.src = event.target.result;
//                     mainImg.src = event.target.result;
//                 };
//                 reader.readAsDataURL(file);
//             }
//         };
//     });
// });