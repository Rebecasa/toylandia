    const bookingsBtn = document.querySelector(".bookings-btn");
    const bookings = document.getElementById("bookings");
    const rentalsBtn = document.querySelector(".rentals-btn");
    const rentals = document.getElementById("rentals");
    const mytoysBtn = document.querySelector(".mytoys-btn");
    const mytoyss = document.getElementById("mytoys");

        bookingsBtn.addEventListener("click", (event) =>{
          if ( bookings.style.display == "none" ){
           bookings.style.display = "block";
            if ( bookings.style.display == "block" ){
               rentals.style.display = "none";
               mytoys.style.display = "none";
            }
          } else {
         bookings.style.display = "none";
          }
    });

            rentalsBtn.addEventListener("click", (event) =>{
              if ( rentals.style.display == "none"){
               rentals.style.display = "block";
                if  (rentals.style.display == "block" ){
                  bookings.style.display = "none";
                  mytoys.style.display = "none";
                }
              } else {
             rentals.style.display = "none";
              }
        });

            mytoysBtn.addEventListener("click", (event) =>{
              if ( mytoys.style.display == "none"){
               mytoys.style.display = "block";
                if  (mytoys.style.display == "block" ){
                  bookings.style.display = "none";
                  rentals.style.display = "none";
                }
              } else {
             mytoys.style.display = "none";
              }
        });








