document.addEventListener('DOMContentLoaded', () => {
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
});
