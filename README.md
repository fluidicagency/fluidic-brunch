# Fluidic Brunch Skeleton

This is an opinionated, optimised build skeleton for [Brunch](http://brunch.io), created by [Fluidic](https://fluidic.agency).

## Installation

Clone this repo manually or use `brunch new dir -s fluidic-brunch`

## Getting started

* Install (if you don't have them):
    * [Node.js](http://nodejs.org): `brew install node` on OS X
    * [Brunch](http://brunch.io): `npm install -g brunch`
    * Brunch plugins and app dependencies: `npm install`
* Run:
    * `npm start` — watches the project with continuous rebuild. This will also launch HTTP server with [pushState](https://developer.mozilla.org/en-US/docs/Web/Guide/API/DOM/Manipulating_the_browser_history).
    * `npm run build` — builds minified project for production
* Learn:
    * `public/` dir is fully auto-generated and served by HTTP server.  Write your code in `app/` dir.
    * Place static files you want to be copied from `app/assets/` to `public/`.
    * [Brunch site](http://brunch.io), [Getting started guide](https://github.com/brunch/brunch-guide#readme)
    * Bootstrap 4 is built from sass files edit `app/styles/bootstrap-variables.scss` to override defaults
    * Font Awesome is included
    * Css will be minified and unused styles removed on `npm run build`
