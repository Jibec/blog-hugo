---
title: 'Fedora Hubs, c’est pas du vent !'
date: '2017-08-31'
type: 'post'
categories: ['Événements']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Faciliter la circulation de l’information dans un grand projet tel que
Fedora est un défi quotidien. Il y a des dizaines de listes, d’outils, de
canaux de communication, de sites, c’est merveilleusement le bazar ! Pour
aider à affronter ce défi de tout grand projet, Fedora Hubs nous a été
annoncé de longue date. Le Flock fut l’occasion pour Aurélien Bompard et
Máirín Duffy de nous faire une [présentation (avec
démo)](https://flock2017.sched.com/event/Bm9h/fedora-hubs-demo-roadmap) et
de poursuivre par un [atelier de
programmation](https://flock2017.sched.com/event/Bm8x/fedora-hubs-hackfest)
(cette fois ci avec Sayan Chowdhury).

Pourquoi est-ce que je parle de programmation ? Car l’atelier était bien
préparé, une boite Vagrant, un tutoriel complet, décrivant pas à pas la
façon de créer un Widget. C’était fonctionnel et complet, c’est un régal de
voir l’effort dépensé dans cette présentation, quand bien même nous n’étions
qu’une quinzaine de personnes présentes pour suivre, chacun a pu s’essayer à
la modification du code.

### La mécanique générale

Fedora Hubs est un outil agrégeant des informations de sources externes, il
contient donc des petits widget qui vont avoir pour mission d’interroger ou
de s’abonner à des flux, puis les afficher dans l’interface. Un mécanisme de
cache (et d’invalidation) permet d’éviter de réclamer de multiples fois les
mêmes informations.

On aura donc des widgets pour les développeurs via des crochets git, mais
aussi tous les [évènements passant dans le bus de message Fedora
(Fedmsg)](https://fedora-fedmsg.readthedocs.io/en/latest/topics.html), ou
ceux que vous aurez envie d’ajouter, dans mon cas ça serait des flux RSS par
exemple pour avoir le flux Fedora-fr sur le Hub francophone.

### Essayez vous aussi !

L’ensemble du tutorial est accessible à cette adresse
[https://docs.pagure.org/fedora-hubs-widget-workshop/](https://docs.pagure.org/fedora-hubs-widget-workshop/),
et à l’exception de la commande suivante pour obtenir la boite Vagrant, vous
avez tout le nécessaire pour vous débrouiller tout seul.

```
   vagrant box add abompard/fedora-hubs-widget-workshop
```

### Comment traduire ?

Il est trop tôt pour traduire, la mécanique sous-jacente n’étant pas
disponible, cependant la technologie principale étant utilisée pour les
Widgets s’appuie sur Jinja2 comme moteur de template. C’est donc exactement
[le même procédé que pour traduire un site utilisant
Pelican](https://github.com/getpelican/pelican-plugins/blob/master/i18n_subsites/localizing_using_jinja2.rst).
Le reste utilise le cadriciel Flask, ce qui devrait également être ok.

Reste après à savoir si on peut et veut traduire le contenu messages en tant
que tel. Peut-être que cela pourrait être intéressant, mais on va déjà
traduire l’interface et mesurer l’expérience perçue.
