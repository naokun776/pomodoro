// Some general UI pack related JS
//= require FlatUI/bootstrap-tooltip.js
//= require FlatUI/custom_checkbox_and
//= require FlatUI/bootstrap-tooltip.js
//= require FlatUI/custom_checkbox_and_radio.js
//= require FlatUI/custom_radio.js
//= require FlatUI/html5shiv.js
//= require FlatUI/icon-font-ie7.js
//= require FlatUI/jquery-1.8.2.min.js
//= require FlatUI/jquery-ui-1.10.0.custom.min.js
//= require FlatUI/jquery.dropkick-1.0.0.js
//= require FlatUI/jquery.placeholder.js
//= require FlatUI/jquery.tagsinput.js
//= require FlatUI/lte-ie7-24.js


$(function () {
    // Custom selects
    $("select").dropkick();
});

$(document).ready(function() {
    // Todo list
    $(".todo li").click(function() {
        $(this).toggleClass("todo-done");
    });

    // Init tooltips
    $("[data-toggle=tooltip]").tooltip("show");

    // Init tags input
    $("#tagsinput").tagsInput();

    // Init jQuery UI slider
    $("#slider").slider({
        min: 1,
        max: 5,
        value: 2,
        orientation: "horizontal",
        range: "min",
    });

    // JS input/textarea placeholder
    $("input, textarea").placeholder();

    // Make pagination demo work
    $(".pagination a").click(function() {
        if (!$(this).parent().hasClass("previous") && !$(this).parent().hasClass("next")) {
            $(this).parent().siblings("li").removeClass("active");
            $(this).parent().addClass("active");
        }
    });

    $(".btn-group a").click(function() {
        $(this).siblings().removeClass("active");
        $(this).addClass("active");
    });

    // Disable link click not scroll top
    $("a[href='#']").click(function() {
        return false
    });

});

