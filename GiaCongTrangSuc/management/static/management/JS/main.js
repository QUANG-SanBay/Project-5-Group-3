document.addEventListener('DOMContentLoaded', () => {
    // Tạo biểu đồ thống kê
    createCharts();
});

function toggleFormPrice() {
    const input = document.querySelectorAll('.form-price-input');
    input.forEach(item => {
        item.disabled = !item.disabled;
    });
}

function calcPrice() {
    const priceInput = document.querySelectorAll('.form-price-input');
    let value = document.querySelector('.order__value-input');
    value.value = '0đ';
    priceInput.forEach((item, index, arr) => {
        item.addEventListener('input', () => {
            if (item.value.trim() !== '') {
                const total = parseFloat(arr[0].value) * parseFloat(arr[1].value) + parseFloat(arr[2].value) + parseFloat(arr[3].value);
                value.value = total.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }).replace('₫', 'đ');
            }
        });
    });
}

function toggleInput() {
    const input = document.querySelector('.order__value-input');
    input.disabled = !input.disabled;
}

// Chuyển đổi hình ảnh
const imgPrListItems = document.querySelectorAll('.order__imgPr-list-item img');
const mainImg = document.querySelector('.order__imgPr-main-item');

imgPrListItems.forEach(item => {
    item.addEventListener('click', () => {
        mainImg.src = item.src;
    });
});


//Xóa đơn hàng
