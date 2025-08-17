function add(name, price) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart.push({ name: name, price: price });
    localStorage.setItem('cart', JSON.stringify(cart));
    alert("The  " + name +"  has been added.");
  }

// document.addEventListener("DOMContentLoaded", function () {
//     const toggle = document.getElementById("mode-toggle");
//     const body = document.body;
  
//     // تأكد إن الوضع اللي ظاهر يطابق الزرار
//     if (toggle.checked) {
//       body.classList.add("night-mode");
//       body.classList.remove("day-mode");
//     } else {
//       body.classList.add("day-mode");
//       body.classList.remove("night-mode");
//     }
  
//     toggle.addEventListener("change", function () {
//       if (this.checked) {
//         body.classList.add("night-mode");
//         body.classList.remove("day-mode");
//       } else {
//         body.classList.add("day-mode");
//         body.classList.remove("night-mode");
//       }
//     });
//   });
  
  
  