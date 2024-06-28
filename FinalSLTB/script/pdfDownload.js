const id = document.getElementById('print');
const arival = document.getElementById('arrival');
const depathc = document.getElementById('dispatch');
const date = document.getElementById('date');
const time = document.getElementById('time');
const seat = document.getElementById('seat');
const price = document.getElementById('price');

$(document).ready(function () {
    $('#print').click(function () {
        $('#content').printThis();
    });
});

arival.value = sessionStorage.getItem("ARIVAL");
depathc.value = sessionStorage.getItem("DEPATURE");
date.value = sessionStorage.getItem("DATE");
time.value = sessionStorage.getItem("TIME");
seat.value = sessionStorage.getItem("SEAT");
price.value = sessionStorage.getItem("PRICE");