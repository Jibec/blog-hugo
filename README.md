# blog-hugo

Un POC of my own blog, using [Hugo](https://github.com/gohugoio/hugo/) static website.

## Run the website

* Download hugo https://github.com/gohugoio/hugo/
* Run `./hugo_0.36_Linux-64bit/hugo server --disableFastRender` (no requirement, but you need to use Hugo >= 0.35 so internal links works fine.)
* Access website: http://localhost:1313/

Please note you also need a recent version of po4a to have good markdown support.
I'm using v0.52. If markdown generation doesn't work well, download it from https://github.com/mquinson/po4a/releases
and edit the make_trans script to add a relative path to the po4a binary.

## What should you see?

My blog is written in French, the website is configured to use both French and English.

The script `make_trans` will generate pot/po files from french content.
You may edit translation, run again `make_trans` and see the updated result.

You should be able:

 * to create language agnostic links between pages (link to folder name)
 * to write an english page with no French translation (name will be item.en.md or default.en.md depending on the template you wish to use)
 * to edit the english translation (edit po file with Localize or Poedit) and see the updated content

What is not available:

 * switch from French to English in every existing or newly created pages.

## My opinion

It works fine! But it doesn't fit my needs regarding to my blog.

It requires php and I need static website to host it in https://jibecfed.fedorapeople.org/blog/.

