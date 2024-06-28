const seat = document.getElementById('showSeat');

let personName = sessionStorage.getItem("SEAT");
console.log(personName);

document.getElementById('bookcount').value = sessionStorage.getItem("bookCount");
document.getElementById('busid').value = sessionStorage.getItem("BusID");
document.getElementById('bookseat').value = sessionStorage.getItem("SEAT");
document.getElementById('currentseat').value = sessionStorage.getItem("CurrentSeat");


seat.innerHTML = `Seat No:[${personName}]`;

