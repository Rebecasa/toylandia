const newFormButton = document.getElementById("new-review");
const reviewForm = document.getElementById("review-form");
const closeButton = document.getElementById("btn-close");

const showForm = () => {
  newFormButton.addEventListener("click", (event) => {
    reviewForm.style.display = "block";
  });
}

const hideForm = () => {
  closeButton.addEventListener("click", (event) => {
    reviewForm.style.display = "none";
  });
}

export { showForm, hideForm };
