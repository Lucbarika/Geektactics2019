// Store all the courses of the dashboard in a variable


// FOr each course, store all the tools in a var and toogle the hidden class

const tutorCourses = document.querySelectorAll(".tutor-course");

tutorCourses.forEach((tutorCourse) => {

const courseButton = tutorCourse.querySelector(".course-title")

// courseButtons.forEach((courseButton) => {

  courseButton.addEventListener("click", (event) => {
    console.log("OK")

    event.preventDefault();
    const allTools = tutorCourse.querySelector(".all-tools-course");
    allTools.classList.toggle("hidden");
  });
});
// });
