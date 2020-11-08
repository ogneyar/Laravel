const mix = require('laravel-mix');

/*
mix.js('resources/js/app.js', 'public/js')
    .postCss('resources/css/app.css', 'public/css', [
        //
    ]);
*/

mix.js('resources/js/app.js', 'public/js')
    .sass('resources/scss/app.scss', 'public/css');
	
/*
mix.browserSync({
	baseDir: "/public",
    index: "index.html",
	port: 8000,
	//startPath: "/index.html",
	//host: "192.168.1.1",
	proxy: "localhost:8080"
});	
*/

//mix.disableNotifications();

// npm run hot
mix.options({
    hmrOptions: {
        host: 'localhost',
        port: 8000
    }
});
