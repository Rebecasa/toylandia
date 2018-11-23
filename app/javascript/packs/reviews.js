const newFormButton = document.querySelector(".new-review");
const reviewForm = document.querySelector(".review-form");
const closeButton = document.querySelector(".btn-close");

const showForm = () => {
  if (newFormButton) {
    newFormButton.addEventListener("click", (event) => {
      console.log(event);
      console.log(reviewForm);
      reviewForm.style.display = "block";
    });
  }
}

const hideForm = () => {
  if (closeButton) {
    closeButton.addEventListener("click", (event) => {
      console.log(event);
      reviewForm.style.display = "none";
    });
  }
}

export { showForm, hideForm };
