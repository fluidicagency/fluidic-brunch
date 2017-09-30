exports.files =
  javascripts: joinTo: 'assets/app.min.js': [
    /^app\/scripts/
    /^node_modules/
  ]
  stylesheets: joinTo: 'assets/app.min.css': [
    /^app\/styles/
    /^node_modules/
  ]

exports.plugins =
  browserSync: logLevel: 'info'
  copyfilemon: 'fonts': [ 'node_modules/font-awesome/fonts/' ]
  sass: options: includePaths: [ 'node_modules/bootstrap/scss' ]
  postcss: processors: [ require('autoprefixer')(add: true) ]
  babel: presets: [ 'latest' ]

exports.overrides =
  production: plugins: off: [
    'uncss-brunch'
    'copyfilemon-brunch'
  ]
  release:
    sourceMaps: false
    optimize: true
    paths: 'public': 'dist'
    plugins:
      off: [ 'browser-sync-brunch' ]
      postcss: processors: [ require('postcss-uncss')(
        html: [ 'public/index.html' ]
        ignore: [ /\.\bactive\b/ ]
        ignoreSheets: [ /fonts.googleapis/ ]) ]

exports.npm =
  enabled: true
  globals:
    jQuery: 'jquery'
    $: 'jquery'
    Popper: 'popper.js'
    bootstrap: 'bootstrap'
  styles:
    #'bootstrap': [ 'dist/css/bootstrap.css' ]
    'font-awesome': [ 'css/font-awesome.css' ]