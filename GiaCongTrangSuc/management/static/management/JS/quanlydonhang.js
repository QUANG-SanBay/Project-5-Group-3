let modal = document.getElementById('modal');
let modalConten = document.getElementById('modal__content');
let deleteBtn = document.querySelector('.manage-orders__item-delete-item');
let parentOrder = document.querySelector('.manage-orders__item-delete').parentElement;
let idOrder =parentOrder.querySelector('.manage-orders__idOrder');
let orderID = document.querySelector('.order-ID');
let noDelete = document.querySelector('.modal__content-action-btn-item.no-delete')

deleteBtn.addEventListener('click',e =>{
    console.log(deleteBtn)
    modal.classList.add('active');
    orderID.textContent = idOrder.innerText;
})
noDelete.addEventListener('click', e => {
    e.preventDefault();
    modal.classList.remove('active');

})