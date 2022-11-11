(function () {
  const sliders = [...document.querySelectorAll(".testimony__body")];
  const buttonNext = document.querySelector("#next");
  const buttonBefore = document.querySelector("#before");

  let value;

  buttonNext.addEventListener("click", () => {
    changePositions(1);
  });

  buttonBefore.addEventListener("click", () => {
    changePositions(-1);
  });

  const changePositions = (add) => {
    const currentTestimony = document.querySelector('.testimony__body--show').dataset.id;
    value = Number(currentTestimony);
    value+= add;

    sliders[Number(currentTestimony)-1].classList.remove('testimony__body--show');
    if(value === sliders.length+1 || value === 0){
        value = value === 0 ? sliders.length : 1;
    };
        
    sliders[value-1].classList.add('testimony__body--show');
  }
})();
