const allReviewsButton = document.querySelector("#all-review-button");
const allReviewsList = document.querySelector(".all-reviews-display");

allReviewsButton.addEventListener("click", (event) => {
  event.preventDefault();
  allReviewsList.classList.toggle("hidden");
});
classList
