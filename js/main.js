$(window).on("load", init);

function init() {
    // Init the switch button plugin
    $("input[type=checkbox]").switchButton({
        on_label: 'Off',
        off_label: 'On'
    });

    // Init the color picker
    $("#color").colorPicker();
    setInterval(colorCall, 1000);

    // Init the theme buttons
    $(".theme").on("click", themeCall);
}