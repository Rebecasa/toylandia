import "bootstrap";
import "../plugins/flatpickr"

const newFormButton = document.getElementById("new-review");
const reviewForm = document.getElementById("review-form");
const closeButton = document.getElementById("btn-close");

newFormButton.addEventListener("click", (event) => {
  reviewForm.style.display = "block";
});

closeButton.addEventListener("click", (event) => {
  reviewForm.style.display = "none";
});
