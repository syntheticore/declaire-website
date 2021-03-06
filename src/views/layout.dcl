head
  meta(charset="UTF-8")
  meta(name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0")
  meta(http-equiv="X-UA-Compatible" content="IE=edge, chrome=1")
  meta(name="theme-color" content="#0aaaad")

  title Declaire.js

  link(href="/stylesheets/main.css" rel="stylesheet")
  link(href="/font-awesome/css/font-awesome.min.css" rel="stylesheet")
  link(href="/highlight.js/styles/github.css" rel="stylesheet")

  link(rel="shortcut icon" href="/favicon.png")

body
  
  header#header
    a.logo(href="/pages/index")
      i.fa.fa-barcode
      span Declaire
    nav > ul
      li > a(href="/pages/index#install") Documentation
      li > a(href="/pages/examples") Examples
      li > a(href="https://github.com/syntheticore/declaire") Github

  main
    {{route /pages/index}}
      {{view HighlightView}}
        {{import index}}

    {{route /pages/examples}}
      {{view HighlightView}}
        {{import examples}}

  footer#footer
    nav > ul.blocks
      li
        h4 Declaire
        ul.items
          li > a(href="/pages/index") Home
          li > a(href="https://www.npmjs.com/package/declaire") NPM
      li
        h4 Help
        ul.items
          li > a(href="/pages/examples") Examples
          li > a(href="/pages/index#install") Documentation
      li
        h4 About
        ul.items
          li > a(href="/pages/license") License
          li > a(href="/pages/imprint") Imprint
          li > a(href="/pages/blog") Blog
      li
        h4 Connect
        ul.items
          li > a(href="https://github.com/syntheticore/declaire")
            i.fa.fa-github
            | Github
          //- li > a(href="#")
          //-   i.fa.fa-facebook-square
          //-   | Facebook
          //- li > a(href="#")
          //-   i.fa.fa-twitter
          //-   | Twitter
    footer > p
      i.fa.fa-barcode
      | Declaire was built with ❤ by
      a(href="https://github.com/syntheticore") Björn Breitgoff 
      | in Aachen, Germany

  //- Google Analytics
  script+
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-60705295-1', 'auto');
    ga('send', 'pageview');
