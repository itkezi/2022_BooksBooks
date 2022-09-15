document.addEventListener("DOMContentLoaded", () => {
  const div_menu = document.querySelector("div.area-menu");
  const div_pop_view = document.querySelector("div.popular_view");

  const SLIDE_WIDTH = 300;

  let position = 0;
  let curPosition = 0;

  const getPopular = (tour_location, food_location, lodgment_location) => {
    fetch(
      `${rootPath}/football/get/${tour_location}/${food_location}/${lodgment_location}`
    )
      .then((res) => res.text())
      .then((result) => {
        div_pop_view.innerHTML = result;
      });
  };

  getPopular("1", "1", "1");

  div_menu?.addEventListener("click", (e) => {
    const button = e.target;
    if (button.tagName === "BUTTON") {
      const tour_location = button.dataset.tour_location;
      const food_location = button.dataset.food_location;
      const lodgment_location = button.dataset.lodgment_location;

      console.log(tour_location, food_location, lodgment_location);
      getPopular(tour_location, food_location, lodgment_location);
    }
  });
  div_pop_view?.addEventListener("click", (e) => {
    const button = e.target;
    if (button.tagName === "BUTTON") {
      const slides = button
        .closest("div.container-view")
        .querySelector("div.slides");

      const sldCount = slides.querySelectorAll("img").length;
      console.log("Count", sldCount);

      if (button.className === "btn prev") {
        console.log("프리 btn");
        if (curPosition > 0) {
          console.log("Current", curPosition);
          position += SLIDE_WIDTH;
          slides.style.transform = `translateX(${position}px)`;
          slides.style.transition = `${0.8}s ease-out`;
          curPosition--;
        }
      }
      if (button.className === "btn next") {
        console.log("넥스트 btn");
        if (curPosition <= sldCount - 5) {
          console.log("Pos", position);
          position -= SLIDE_WIDTH;
          slides.style.transform = `translateX(${position}px)`;
          slides.style.transition = `${0.8}s ease-out`;
          curPosition++;
        }
      }
    }
  });

  /* 버튼 색상 변경 */
  var btns = document.getElementsByClassName("area-btn");
  function btnClick(event) {
    if (event.target.classList[1] === "clicked") {
      event.target.classList.remove("clicked");
    } else {
      for (var i = 0; i < btns.length; i++) {
        btns[i].classList.remove("clicked");
      }
      event.target.classList.add("clicked");
    }
  }
  function init() {
    for (var i = 0; i < btns.length; i++) {
      btns[i].addEventListener("click", btnClick);
    }
  }
  init();
});
