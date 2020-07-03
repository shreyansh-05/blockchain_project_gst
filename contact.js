$(function (){
    var info = $('.info');
    $('#mailtip2').mailtip({
    onselected: function (mail){
    info.text('you choosed email: ' + mail)
    }
    });
});