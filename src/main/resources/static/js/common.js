function plus() {
    let result = parseInt(document.getElementById('inp_1').value) +
        parseInt(document.getElementById('inp_2').value) +
        parseInt(document.getElementById('base_number').innerHTML);
    if (result > 0) {
        startBlink(document.getElementById('blinker'), 'green', result, 200);
    }
}

function minus() {
    let result = parseInt(document.getElementById('inp_1').value) -
        parseInt(document.getElementById('inp_2').value) +
        parseInt(document.getElementById('base_number').innerHTML);
    if (result > 0) {
        startBlink(document.getElementById('blinker'), 'red', result, 200);
    }
}

function startBlink(element, color, counter, interval) {
    let startCounter = 0;
    const intervalId = setInterval(function () {
        if (element.classList.contains(color)) {
            element.classList.remove(color);
        } else {
            element.classList.add(color)
        }
        startCounter++;
        if (startCounter === counter * 2) {
            clearInterval(intervalId);
        }
    }, interval)
}