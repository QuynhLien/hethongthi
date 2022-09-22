$(function () {
    'use strict';

    $("#formLogin").on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        form.parsley().validate();
        if (form.parsley().isValid()) {
            LoginFormSubmit();
        }
    });

});

var LoginFormSubmit = function () {
    run_waitMe('.signin-box');
    var data = $('#formLogin').serialize();
    $.ajax({
        url: base_ajax + "/login",
        type: "POST",
        data: data,
        success: function (response) {
            if (response.code != 200) {
                run_waitMe('.signin-box', true);
                Swal.fire({
                    text: response.msg
                });
            } else {
                location.reload();
            }
        },
        error: function(error) {
            run_waitMe('.signin-box', true);
            Swal.fire({
                text: error.responseJSON.msg
            });
        }
    });
    $('.password').val('');
};