const FULL_DASH_ARRAY = 283;
const WARNING_THRESHOLD = parseInt(time) / 2; // cam
const ALERT_THRESHOLD = parseInt(time) / 4; //do

const COLOR_CODES = {
info: {
    color: "green"
},
warning: {
    color: "orange",
    threshold: WARNING_THRESHOLD
},
alert: {
    color: "red",
    threshold: ALERT_THRESHOLD
}
};

const TIME_LIMIT = parseInt(time); //xanh
let timePassed = 0;
let timeLeft = TIME_LIMIT;
let timerInterval = null;
let remainingPathColor = COLOR_CODES.info.color;

document.getElementById("app").innerHTML = `${formatTime(timeLeft)}`;
$('.countdown-1').removeClass('d-none');

if (moment(moment(time_start).add(20, 'minutes').format('YYYY-MM-DD HH:mm:ss')) <= moment()) { //chi cho thi trong 20p, het se bi session time out
    onTimesUp();
    run_waitMe('.wait-containter');
    window.location.replace(base_admin + "/thankyou");
}

setTimeout(function() {
    $('.countdown-1').addClass('d-none');
    $('.countdown-2').removeClass('d-none');
    startTimer();
}, 4000);

function onTimesUp() {
    clearInterval(timerInterval);
}

function startTimer() {
    timerInterval = setInterval(() => {
        timePassed = timePassed += 1;
        timeLeft = TIME_LIMIT - timePassed;
        document.getElementById("app").innerHTML = formatTime(
        timeLeft
        );
        setRemainingPathColor(timeLeft);

        if (timeLeft === 0) {
            onTimesUp();
            if (next_group) {
                run_waitMe('.wait-containter');
                window.location.replace(base_admin + "/examination/" + test + "/" + next_group);
            } else {
                run_waitMe('.wait-containter');
                window.location.replace(base_admin + "/thankyou");
            }
        }
    }, 1000);
}

function formatTime(time) {
    const minutes = Math.floor(time / 60);
    let seconds = time % 60;

    if (seconds < 10) {
        seconds = `0${seconds}`;
    }

    return `${minutes}:${seconds}`;
}

function setRemainingPathColor(timeLeft) {
    const { alert, warning, info } = COLOR_CODES;
    if (timeLeft <= 5) {
        $("#app").attr('style','color: red !important');
    }
}

$(function () {
    'use strict';

    $('.content-exam:not(.content-audio)').each(function() {
        $(this).html($(this).text());
    });

    $('.content-audio').each(function() {
        var src = $(this).attr('data-src');
      
        $(this).html('<audio controls controlslist="nodownload" src="../../assets/audio/'+ src +'" class="exam"></audio>');
      });

    $(document).on("click", "#btnNext", function () {
        run_waitMe('.wait-containter');
        var group = $(this).attr('data-group');
        window.location.replace(base_admin + "/examination/" + test + "/" + group);
    });

    $(document).on("click", "#btnFinish", function () {
        run_waitMe('.wait-containter');
        window.location.replace(base_admin + "/thankyou");
    });
});
