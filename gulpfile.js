var gulp = require('gulp');
var rename = require('gulp-rename');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var sourcemaps = require('gulp-sourcemaps');
var nodemon = require('gulp-nodemon');
var php = require('gulp-connect-php');

var browsersync = require('browser-sync').create();
var reload  = browsersync.reload;



function sass_converter(cb) {        
    gulp.src('./resources/scss/app.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({
            errorLogToConsole: true
        }))
        .on('error', console.error.bind(console))
        .pipe(autoprefixer({
            overrideBrowserslist: ['last 5 versions'],
            casdcade: false
        }))
        .pipe(gulp.dest('./public/css/'))
        .pipe(sass({
            outputStyle: 'compressed'
        }))
        .pipe(rename({suffix: '.min'}))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('./public/css/'))
		.pipe(browsersync.stream());        
    cb();
}

function watchSass() {
    gulp.watch('./resources/scss/**/*', sass_converter);
}

function php_func() {
    php.server({ base: './resources/views', port: 8080, keepalive: true});
}
function Sync() {
    browsersync.init({
        proxy: '127.0.0.1:8080',
        port: 8000,
		browser: "opera",
		open: 'external'
    });
}
function watch() {
    gulp.watch('./resources/views/*.blade.php', reload);
}

gulp.task('default', gulp.parallel(php_func, Sync, watch));