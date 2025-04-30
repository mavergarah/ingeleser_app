$(function() {
    var contact_form_url = $('#contactForm').data('contact-url');

    $('#contactForm').on('submit', function() {
        $.post(contact_form_url, $(this).serialize(), function(response) {
            if (response === 'OK') {
                formSuccess();
            }
        });

        return false;
    });
});
