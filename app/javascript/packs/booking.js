const bookingsBtn = document.querySelector(".bookings-btn");
const bookings = document.getElementById("bookings");
const rentalsBtn = document.querySelector(".rentals-btn");
const rentals = document.getElementById("rentals");
const myToysBtn = document.querySelector(".mytoys-btn");
const myToys = document.getElementById("mytoys");

if (bookingsBtn) {
  bookingsBtn.addEventListener("click", (event) =>{
    if (bookings.style.display == "none" ){
     bookings.style.display = "block";
      if ( bookings.style.display == "block" ){
      rentals.style.display = "none";
      myToys.style.display = "none";
      }
    } else {
   bookings.style.display = "none";
    }
  });
}

if (rentalsBtn) {
  rentalsBtn.addEventListener("click", (event) =>{
    if (rentals.style.display == "none"){
     rentals.style.display = "block";
      if (rentals.style.display == "block" ){
      bookings.style.display = "none";
      myToys.style.display = "none";
      }
    } else {
   rentals.style.display = "none";
    }
  });
}

if (myToysBtn) {
  myToysBtn.addEventListener("click", (event) => {
    if (myToys.style.display == "none") {
      myToys.style.display = "block";
      if (myToys.style.display == "block") {
        bookings.style.display = "none";
        rentals.style.display = "none";
      }
    } else {
      myToys.style.display = "none";
    }
  });
}








