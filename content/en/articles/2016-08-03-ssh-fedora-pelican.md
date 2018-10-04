---
title: 'Envoyer son contenu sur fedorapeople avec ssh et Pelican'
date: '2016-08-03'
type: 'post'
categories: ['Trucs et astuces']
tags: ['fedora-fr', 'pelican', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

J'utilise [Pelican](http://getpelican.com) pour ce petit blog et je suis
hébergé par Fedora sur la plateforme fedorapeople. Toutes les informations
pour y accéder et créer sa clefs sont décrites sur [cette page du
wiki](https://fedoraproject.org/wiki/Infrastructure/fedorapeople.org). Je
pars sur l'hypothèse que vous avez lu cette page qui vous explique notamment
comment produire une clef rsa privée.

Pelican produit un ensemble de fichiers html qu'il faut envoyer sur le
serveur distant.

Heureusement, en utilisant l'outil *pelican-quickstart*, il propose de gérer
un fichier _MakeFile_.

Ce fichier est facile à utiliser :

    :::bash
    $ make help
    Makefile for a pelican Web site

    Usage:
       make html                           (re)generate the web site
       make clean                          remove the generated files
       make regenerate                     regenerate files upon modification
       make publish                        generate using production settings
       make serve [PORT=8000]              serve site at http://localhost:8000
       make serve-global [SERVER=0.0.0.0]  serve (as root) to :80
       make devserver [PORT=8000]          start/restart develop_server.sh
       make stopserver                     stop local server
       make ssh_upload                     upload the web site via SSH
       make rsync_upload                   upload the web site via rsync+ssh
       make dropbox_upload                 upload the web site via Dropbox
       make ftp_upload                     upload the web site via FTP
       make s3_upload                      upload the web site via S3
       make cf_upload                      upload the web site via Cloud Files
       make github                         upload the web site via gh-pages

    Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html
    Set the RELATIVE variable to 1 to enable relative urls


Seuls quelques paramètres sont donc à renseigner ici :

    :::
    SSH_HOST=fedorapeople.org
    SSH_PORT=22
    SSH_USER=jibecfed
    SSH_TARGET_DIR=/home/fedora/jibecfed/public_html/blog

On termine ensuite par les commandes suivantes :

    :::bash
    make html
    make ssh_publish

Magiquement, cela sera en ligne, sans problèmes majeurs !
