const inputQuantity = document.querySelector('.input-quantity');
const btnIncremet = document.querySelector('#increment');
const btnDecrement = document.querySelector('#decrement');

let valueByDefault = parseInt(inputQuantity.value)

//funciones

btnIncremet.addEventListener('click', () =>{
    valueByDefault += 1
    inputQuantity.value = valueByDefault
});

btnDecrement.addEventListener('click', () =>{

    if(valueByDefault == 1){
        return
    }
    valueByDefault -= 1
    inputQuantity.value = valueByDefault
});

//toggle

//title

const toggleDescription = document.querySelector('.title-description ');
const toggleAdditionalInformation = document.querySelector('.title-additional-information');
const toggleReview = document.querySelector('.title-reviews');

//text

const contentDescription = document.querySelector('.text-description ');
const contentAdditionalInformation = document.querySelector('.text-additional-information');
const contentReview = document.querySelector('.text-reviews');


//funciones Toggle

toggleDescription.addEventListener('click', () => {
    contentDescription.classList.toggle('hidden');
});

toggleAdditionalInformation.addEventListener('click', () => {
    contentAdditionalInformation.classList.toggle('hidden');
});

toggleReview.addEventListener('click', () => {
    contentReview.classList.toggle('hidden');
});