---
title: Translation automation with po4a
date: 2018-11-22
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Promoting languages is good, but there are thousands of languages, and
thinking that each one has the critical mass to follow each change in your
project to keep it up to date and use anxiety-provoking tools like git is
illusory.

This article is the continuation of the article on the creation of a [static
multi-lingual site with Hugo] ({{< ref "2018-11-14-multilingue-avec-hugo.md"
>}}).

Inviting a translator to use development tools (gitlab, github, bugzilla,
etc.) means limiting the linguistic contribution to developers with an
appetite for their language. And these developers are few in number, even
more those able to resist their usage of jargon and the omnipresence of
English.

This is where [po4a](http://po4a.org/)[PO for anything - PO for everything]
comes in, whose website perfectly describes the objective: to simplify
translation (and more interestingly, translation maintenance) by using
gettext tools in areas for which they were not intended, such as
documentation.

# What is Gettext?

Gettext is the least bad tool for internationalizing software, which has
become a de facto standard, working in a fairly simple way.

The content to be translated is extracted and structured in a translation
file template, the "pot" (Portable Object-Template).

This file will be copied for each language. We will therefore have one "po"
file (Portable Object) per file to translate, with the translation in
__msgtr__. Geeks will say that this format is not optimal while users will
say that it has the quality of being easy to use and convey between
translators (hence its name: Portable Object).

Then, depending on the software, the "po" files will be exploited in
different ways, usually compiled into a "mo" file (Machine Object). Here, we
will simply use po4a to extract the content.

# Understand: use po4a in manual mode

On my machine, the command `po4a --version` returns:

    po4a version 0.54.
    écrit par Martin Quinson et Denis Barbier.
    Copyright (C) 2002, 2003, 2004 Software in the Public Interest, Inc.

## Generate translation templates

Our objective is to generate "pot" files from the content of the site, the
order is simple:

```
po4a-gettextize \
		--format asciidoc --option debug split_attributelist \
		--master "$file" --master-charset "UTF-8" \
		--po "$POTDIR/$potname"
```

This command says: po4a, please transform the file **$file**, whose format
is **asciidoc** with **UTF-8** encoding, into gettext format and store the
"pot" file under the name **$potname** in the folder **$POTDIR** (in
addition, enable the debug and split_attributelist options).

With your terminal, go to the root of the project.

Define the variables and start generating the gettext model:

```
$ file=content/fr/posts/demo.md 
$ POTDIR=l10n/pot
$ potname=demo.pot
$ po4a-gettextize \
		--format asciidoc --option debug split_attributelist \
		--master "$file" --master-charset "UTF-8" \
		--po "$POTDIR/$potname"
```

You will get a nice file **l10n/pot/demo.pot**, in my case:

```
[…]

#. type : Plain text#: content/fr/posts/demo.md:1 #, no-wrap msgid "---\n"
msgstr ""

#. type : Plain text #: content/fr/posts/demo.md:5 #, no-wrap msgid ""
"title : \"Démo\"\n" "date : 2018-10-22T07:46:47+02:00\n" "draft : False\n"
"---\n" msgstr ""

#. type : Plain text #: content/fr/posts/demo.md:7 msgid "Je suis un
démonstrateur d’une page de grande qualité." msgstr "" 

```

#### Generate translation files

Our goal is to have a "po" file in which to enter our translation.

As we already have content in various languages on the demo site created in
the previous article, we will use German here.

Copy your file **l10n/pot/demo.pot** as **l10n/po/de/demo.po**.

Translate the content using [Poedit](https://poedit.net/),
[Lokalize](https://userbase.kde.org/Lokalize/fr) or your favorite editor.

You should have content that looks like this:

```
[…]

#. type : Plain text #: content/fr/posts/demo.md:1 #, no-wrap msgid "---\n"
msgstr "---\n"

#. type : Plain text #: content/fr/posts/demo.md:5 #, no-wrap msgid ""
"title : \"Démo\"\n" "date : 2018-10-22T07:46:47+02:00\n" "draft : False\n"
"---\n" msgstr "" "title : \"Demo\"\n" "date : 2018-10-22T07:46:47+02:00\n"
"draft : False\n" "---\n"

#. type : Plain text #: content/fr/posts/demo.md:7 msgid "Je suis un
démonstrateur d’une page de grande qualité." msgstr "Ich bin ein
Demonstrator für eine qualitativ hochwertige Seite."

```


#### Generate translated content

Our objective is to generate German content thanks to the translations in a
"po" file, the order is simple:


```
po4a-translate --format asciidoc --option debug split_attributelist \
		--master "$file" --master-charset "UTF-8" \
		--po "$PO_DIR/$lang/$potname.po" \
		--localized "$localized_file" --localized-charset "UTF-8" \
		--keep 50
```

This command says: po4a, please generate the file **$localized_file**, based
on the model of the source file **$file**, thanks to the translation
**$potname.po** in language **$lang**, whose format is **asciidoc** and the
**UTF-8** encoding, but only generates this translated file if at least 50%
of the original content is translated (and enables the debug and
split_attributelist options).

I let you do your own tests, but normally you should be able to generate
your article in German, modify Hugo's configuration file to add the German
language and confirm that it works properly.

#### Update source content

Where this tool is most valuable is maintenance.

Nominal scenario:

 1. you write your article, send it in translation, receive translations,
    generate and publish your article in several languages,
 2. Some time later, you realize that one sentence would benefit from
    reformulation and another would need to be added.

It is therefore necessary:

 1. generate a new translation template for this article (the POT),
 2. update the translation files (each PO),
 3. ask the translators to complete the file,
 4. receive their translations,
 5. publish your changes in several languages.

```
po4a-updatepo \
		--format asciidoc \
		--master "$file" \
		--master-charset "UTF-8" \
		--po "$po_file" ; then
```

This command says: po4a, please update the translation file **$po_file**
based on the translation template **$file**, using the format **asciidoc**
and with  **UTF-8** encoding.

Do some tests:

    1. creation of an article
    2. pot generation thanks to po4a-gettextize
    3. copy this file into a po file
    4. translate the content of this file
    5. update your article
    6. update your translation file with po4a-updatepo
    7. look at the result (depending on whether or not you have translated the
       sentence that has been modified)

# Automate: make scripts

This article is about automating, here are some scripts that will allow you
to manage an indefinite number of files, to make your life easier.

## Generation of POT

I invite you to use what I use for my blog:
https://github.com/Jibec/blog-hugo/blob/master/make_pot.sh

You now have enough information to understand the purpose of such a script,
and it is normally generic enough for it to be adaptable for your own
installation (it was co-written with [asamalik]
(https://fedoraproject.org/wiki/User:Asamalik) and [bex]
(https://fedoraproject.org/wiki/User:Bex) for Fedora documentation).

## Generation of translated content

Same: https://github.com/Jibec/blog-hugo/blob/master/use_po.sh

# Conclusion

You should now know how to automate the use of translation files, for an
unlimited number of source files, as is often the case with a website or
documentation.

You have noticed that for each language added, content updating requires
coordination and many file updates between the developer and translators.

And of course, it is not easy, which is why translation platforms are
used. Be careful, not all are equal and the choice is not at all neutral, I
invite you to read my article[what is a good translation platform?] ({{< ref
"2016-09-08_plate-forme_de_traduction.md" >}})).
