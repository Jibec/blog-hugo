---
title: Building a multilingual static website with Hugo
date: 2018-11-09
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

I have long ago found that the static site generator [Pelican]
(https://blog.getpelican.com/) needs to be replaced. Two problems pushed me
to do so:

 1. RSS/Atom feeds are truncated, forcing the reader to visit my site.
 2. La prise en charge de l’internationalisation est une bidouille au lieu d’une
    fonctionnalité à part entière.

Moreover, it is mainly for this second reason that I was not interested in
[Jekyll] (https://gohugo.io/commands/hugo_import_jekyll/#readout).

# Hugo

Generating a site with [Hugo](https://gohugo.io) is trivial. The project
documentation does its job and writing an article consists in creating a
text file with some tags.

Where it becomes more complex, it is to find a theme that simultaneously
meets its need in terms of structuring information, updated with the latest
changes made by Hugo and supporting internationalization.

My recommendation is to focus on the first two points. The last one is
finally quite easy to solve.

Overall, the links in the themes are often problematic, it is necessary to
pay attention to some points described in this page of the[documentation of
internationalization with Hugo]
(https://gohugo.io/content-management/multilingual/)

Really, read the documentation.

## Hyde theme activation

First of all, here is the version of Hugo I use:

    Hugo Static Site Generator v0.49 linux/amd64 BuildDate: 2018-09-24T10:03:17Z


1. Let's create the new site: `hugo new site i18n-hyde`
2. This will create a **i18n-hyde** folder with the default structure.
3. [Download the hyde theme](https://themes.gohugo.io/hyde/)
4. Move it to the **themes** folder on your site, to a folder called **hyde**.
5. Modify the configuration file (by default config.toml), enter the theme used
   `theme = "hyde"`.
6. Create a new article: `hugo new posts/demo.md``
7. Modify it by adding the content of your choice and remove the draft status.
8. Start the site generation via: `hugo server -D`

## Enable internationalization in Hugo

Well, now let's add a little internationalization, modify the configuration
file:

1. Change the default language:
   * `languageCode = "fr"`
   * Description of the documentation: __a string representing the language as
   defined. This is mostly used to populate the RSS feeds with the right
   language code.__
2. Tell Hugo that any content without language is in French by default:
   * `DefaultContentLanguage = "fr"`
   * Description of the documentation: __Content without language indicator will
   default to this language.__
3. Tell Hugo that your articles are now in a sub-folder of the language name:
   * `defaultContentLanguageInSubdir = true`
   * Description of the documentation: __Render the default content language in
   subdir, e.g. content/en/. The site root / will then redirect to /en/.__
4. In the folder of your site, create a folder **fr** in content.
5. Move the folder **posts** to this folder **fr**.

You have probably already guessed it, the other languages will be in the
same folder.  Our little article from earlier is now available at the
following address:
[http://localhost:1313/fr/posts/demo/](http://localhost:1313/fr/posts/demo/)

# Content

## Let's translate our article into several languages

Go to the content folder, copy your folder **fr** in ar for Arable, **oc**
for Occitan, **en** for English and **ro** for Romanian.

Easy, in the content folder, use this formula: ```bash for i in ar oc en ro;
do cp -R fr $i ; done ```

To better test it, take a minute to put real content, both the title and the
body of the article, by using a translation service (or by finding content
in these languages, for example on Wikipedia).

Generate the site again: `hugo server -D`

Try it a moment:

* [In Arabic](http://localhost:1313/ar/posts/demo/)
* [In Occitan](http://localhost:1313/oc/posts/demo/)
* [In English](http://localhost:1313/en/posts/demo/)
* [In Romanian](http://localhost:1313/en/posts/demo/)

It works without any problems. That's a good start.

Now let's look at the rest of the site:

* The [home] (http://localhost:1313/) lists all articles regardless of
  language
* The [French homepage](http://localhost:1313/fr) only lists the good article
  (same for other languages) but the formatting is bad.

In fact, that's where we see the trap, we think it works but no.  Hugo sees
folders with articles, and simply generates the pages next to them.

Vous pouvez le constater, car lors de la génération du site, lorsque vous
saisissez `hugo server -D`, vous n’avez qu’une colonne pour les pages
correspondantes à la langue **FR**.

## Progress report

So we have an internationalization substitute, it corresponds to what we
could have with any static site generator, such as [Pelican]
(https://blog.getpelican.com/), [Jekyll] (https://jekyllrb.com) or [Antora]
(https://antora.org).

What we would like to have in addition, are all the small details that allow
native support for local URLs, internal links, sitemaps, HTML LANG tags,
etc.

# Add internationalization to the theme

## Start by notifying Hugo

Hugo needs to know which languages are to be activated.  Here I do a rough
configuration giving a translated title and the **place where the content of
each language is stored**.

```
[languages]
  [languages.fr]
    title = "Mon démonstrateur d’internationalisation"
    contentDir = "content/fr"
  [languages.ar]
    title = "مُستعرِضي للتدويل"
    contentDir = "content/ar"
  [languages.oc]
    title = "Lo meu demostrator d’internacionalizacion"
    contentDir = "content/oc"
  [languages.en]
    title = "My internationalization demonstrator"
    contentDir = "content/en"
  [languages.ro]
    title = "Demonstratorul meu de internaționalizare"
    contentDir = "content/ro"
```

Now restart `hugo server -D`, you only have one column for the pages
corresponding to the language **FR**.

We can see one column per language, which is a good sign:

| AR | OC | EN | RO | FR
------------------ |----|----|----|----|---
  Pages            | 10 | 10 | 10 | 10 | 10
  Paginator pages  |  0 |  0 |  0 |  0 |  0
  Non-page files   |  0 |  0 |  0 |  0 |  0
  Static files     |  6 |  6 |  6 |  6 |  6
  Processed images |  0 |  0 |  0 |  0 |  0
  Aliases          |  1 |  1 |  1 |  1 |  1
  Sitemaps         |  2 |  1 |  1 |  1 |  1
  Cleaned          |  0 |  0 |  0 |  0 |  0

Accessing the local site by replacing fr with ar, oc, en or ro shows the
content in the local language. That's good!

## List of fixes to be made

There are still a lot of small details to do:

 1. the main title of the site (the one on the left) does not include the
    language
 2. a button should be added to read the content in another language
 3. use URLs in the language of the articles
 4. Are all internal links consistent with the current language?
 5. the HTML LANG tag is not defined

#### Correction 1 : main link

Obviously, Hugo themes often use the variable `.Site.BaseURL`.  This is the
fixed address defined in the first line of our configuration file.

A simple command indicates where this variable is used: `grep -R
Site.BaseURL *`

* themes/hyde/layouts/partials/sidebar.html
  * This is our left menu → to fix
* themes/hyde/layouts/partials/head.html
  * It is for our static files → to keep as is
* themes/hyde/layouts/404.html
  * This is for the return button in case of page 404 → to keep as is

The fix is simple, just replace __{{{.Site.BaseURL }}__ with
__{{{.Site.BaseURL | relLangURL }}__.

We are beginning to understand what it means to "internationalization
support".

#### Correction 2 : list languages

A simple list will allow us to list the translated articles:

```HMTL
{{ if .IsTranslated }}
<ul class="nav-list">
    {{ range .Translations }}
    <li>
        <a href="{{ .Permalink }}">{{ .Language.LanguageName }}</a>
    </li>
    {{ end}}
</ul>
{{ end }}
```

This will be added at the end of the following models:

* in the article: themes/hyde/layouts/_default/single.html
* in the sidebar : themes/hyde/layouts/partials/sidebar.html

We notice that we use the code `{{{.Language.LanguageName }}`.  For some
reason I don't know, we have to add to our configuration file the variable
**languageName** for each of our languages.

```
[languages]
  [languages.fr]
    title = "Mon démonstrateur d’internationalisation"
    contentDir = "content/fr"
    languageName = "Français"
  [languages.ar]
    title = "بلدي تدويل المتظاهر"
    contentDir = "content/ar"
    languageName = "العربية"
  [languages.oc]
    title = "El meu manifestant d’internacionalització"
    contentDir = "content/oc"
    languageName = "occitan"
  [languages.en]
    title = "My internationalization demonstrator"
    contentDir = "content/en"
    languageName = "English"
  [languages.ro]
    title = "Demonstratorul meu de internaționalizare"
    contentDir = "content/ro"
    languageName = "Română"
```

By updating, we can see that it is working well. That's good!

### Fix 3: use the local language in the URL

Just add two lines to the configuration:

```
[permalinks]
   posts = "/:year/:month/:title/"
```

Et voilà ! Our demo page has the following addresses:

 * French: http://localhost:1313/fr/2018/10/demo/
 * Romanian : http://localhost:1313/ro/2018/10/demonstra%C8%9Bie/
 * Arabic:
   http://localhost:1313/ar/2018/10/%D9%85%D8%B8%D8%A7%D9%87%D8%B1%D8%A9/
 * Occitan: http://localhost:1313/oc/2018/10/demostraci%C3%B3/
 * English: http://localhost:1313/en/2018/10/demo/

### Correction 4: Are all internal links consistent?

In the same way as with the baseURL used for the side menu, check that the
links pointing to the categories or tags of your content are consistent.

#### Correction 5: the HTML LANG tag

To get started, here is[the W3C
recommendation](https://www.w3.org/International/questions/qa-html-language-declarations)
and the explanation on[why use this lang
tag](https://www.w3.org/International/questions/qa-lang-why).

A simple command indicates where the html database is declared: `grep -R
"html" *`

There is only one template page: __themes/hyde/layouts/partials/head.html__.

We will simply add `lang="{{{.Site.Language.Lang }}"
xml:lang="{{{.Site.Language.Lang }}"` to our HTML tag.

# Bonus: clean up the theme

Remember to remove all things harmful to the web.

In this theme we find a reference to Google Analytics and Disqus, but above
all a systematic call to Google Fonts.

The files to be modified are as follows, it takes two minutes and the web
will only get better:

 * themes/hyde/layouts/_default/baseof.html
 * themes/hyde/layouts/_default/single.html
 * themes/hyde/layouts/partials/head.html
 * themes/hyde/layouts/partials/head_fonts.htm

# Results

We now have a static and multilingual website:)

Thank you Hugo.
