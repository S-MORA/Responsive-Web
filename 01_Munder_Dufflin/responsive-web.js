let triggerIt = document.querySelector(".trigger");
let bounceIt = document.querySelectorAll(".bounce-this");

triggerIt.addEventListener("mouseover", function () {
 for (let i = 0; i < bounceIt.length; i++){
bounceIt[i].classList.add("bouncer")
 }
});
triggerIt.addEventListener("mouseout", function () {
  console.log("hello");
  for (let i = 0; i < bounceIt.length; i++){
  bounceIt[i].classList.remove("bouncer")
 }
});

// Side navigation

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
