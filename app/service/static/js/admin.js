/*jshint strict:true, browser:true, jquery:true */
$(function() {
    $('textarea').redactor({
        minHeight: 300,
        lang: 'es',
        deniedTags: ['html', 'head', 'link', 'body', 'meta', 'script', 'applet'],
        convertDivs: false,
        plugins: ['imagemanager', 'video', 'alignment']
    });
});
