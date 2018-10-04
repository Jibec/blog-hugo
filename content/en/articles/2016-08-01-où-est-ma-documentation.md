---
title: 'Trouver la documentation des logiciels installés sur Fedora ?'
date: '2016-08-01'
type: 'post'
categories: ['Trucs et astuces']
tags: ['fedora-fr', 'documentation']
author: 'Jean-Baptiste Holcroft'
---

Je suis dans un avion, en train de faire un peu de « programmation » (à mon
humble niveau). Je suis en train de créer mon blog, et je cherche un peu de
documentation sur l’outil pelican que je vais utiliser pour générer mon
petit site statique.

Sur Fedora je découvre le dossier docs :

    :::bash
    $ du -h /usr/share/doc --max-depth=0
    346M	/usr/share/doc

Comme Fedora a une pensée particulière pour les contributeurs et
développeurs, je suppose que la documentation est fournie par défaut avec
chaque paquet ?

Bon, après, je n’ai plus qu’à voir s’il y a quelque chose pour mon outil :

    :::bash
    $ ls /usr/share/doc | grep pelican
    python2-pelican
    python3-pelican

Bingo ! À l’intérieur, la même chose que ce qu’on pourrait trouver sur [la
documentation officielle](http://docs.getpelican.com/)
