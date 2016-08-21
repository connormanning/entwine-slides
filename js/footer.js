var footer= $('#footer').html();
if (window.location.search.match(/print-pdf/gi)) {
    Reveal.addEventListener('ready', function(event) {
        $('.slide-background').append(footer);
    });
}
else {
    $('div.reveal').append(footer);
}

