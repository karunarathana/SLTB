const SeatNo = document.getElementById('SeatNo');
const total = document.getElementById('total');

let bookSeat = ['48', '4', '5', '54'];
let cal;

//for (let index = 0; index < bookSeat.length; index++) {
// const booked = document.getElementById(bookSeat[index]);
// booked.style.backgroundColor = "#2e2d2d";

//}


const click = [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true];
const letters = new Set();
let output;

function putColor(data) {
    const seat05 = document.getElementById(data);
    if (click[data] == true) {
        if (bookSeat.includes(data)) {

        } else {
            click[data] = false;
            seat05.style.backgroundColor = "rgb(26, 205, 10)";
            letters.add(data);
        }
    } else {

        click[data] = true;
        seat05.style.backgroundColor = "white";
        letters.delete(data);
    }
    output = "";
    for (const entry of letters) {
        if (entry == true) {

        } else {
            output += entry + ",";
        }
    }
    SeatNo.innerHTML = `Seat No.[${output}]`;
    cal = letters.size * 230.00;
    total.innerHTML = `Fare Barake:Rs.${cal}`



}

//This is second funcin implement
function setSection(currentSeat) {
    let arrival = document.getElementById('arrival').innerHTML;
    let depature = document.getElementById('depature').innerHTML;
    let date = document.getElementById('date').innerHTML;
    let time = document.getElementById('time').innerHTML;
    let busshedID = document.getElementById('busID').innerHTML;

    sessionStorage.setItem('SEAT', output);
    sessionStorage.setItem('bookCount', letters.size);
    sessionStorage.setItem('CurrentSeat', currentSeat);
    sessionStorage.setItem('BusID', busshedID);

    sessionStorage.setItem('ARIVAL', arrival);
    sessionStorage.setItem('DEPATURE', depature);
    sessionStorage.setItem('DATE', date);
    sessionStorage.setItem('TIME', time);
    sessionStorage.setItem('PRICE', cal);
    // Redirect to another page
    window.location.href = '/pages/proceedOrder.aspx';
}
function showData(...param1) {
    for (let index = 0; index < param1.length; index++) {
        const booked = document.getElementById(param1[index]);
        booked.style.backgroundColor = "#2e2d2d";

    }

}