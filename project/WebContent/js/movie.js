


// navbar transparent
const navbar = document.querySelector('#navbar');
const navbarHeight = navbar.getBoundingClientRect().height;

document.addEventListener('scroll',() => {
  console.log(window.scrollY);
  if(window.scrollY>navbarHeight){
    navbar.classList.add('navbar_display');
  }else{
    navbar.classList.remove('navbar_display');
  }
});

// ratingToPercent() {
//   const score = +this.restaurant.averageScore * 20;
//   return score + 1.5;
// }











