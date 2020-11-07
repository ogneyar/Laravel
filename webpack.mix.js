const mix = require('laravel-mix');

/*
mix.js('resources/js/app.js', 'public/js')
    .postCss('resources/css/app.css', 'public/css', [
        //
    ]);
*/

mix.js('resources/js/app.js', 'public/js')
    .sass('resources/scss/app.scss', 'public/css');