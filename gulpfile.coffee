gulp = require 'gulp'
uglify = require 'gulp-uglify'
streamify = require 'gulp-streamify'
rename = require 'gulp-rename'
rimraf = require 'rimraf'
coffee = require 'gulp-coffee'
pkg = require './package.json'

gulp.task 'build', ->
  gulp.src('./src/**/*')
    .pipe(coffee())
    .pipe(rename(basename: 'index'))
    .pipe(gulp.dest("./dist"))
    .pipe(streamify(uglify()))
    .pipe(rename(extname: '.min.js'))
    .pipe(gulp.dest("./dist"))