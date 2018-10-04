---
title: 'Fedora 25 est là, regard sur le travail des traducteurs'
date: '2016-11-22'
type: 'post'
categories: ['Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Pour [Fedora 25](https://getfedora.org), les traducteurs se sont chargés de traduire intégralement [ibus-typing-booster](https://fedoramagazine.org/ibus-typing-booster/), qu’on pourrait appeler l’accélérateur de saisie ! Il vise à faciliter l’écriture de langues asiatiques, mais peut aussi permettre aux européens, outre l'accélération de la saisie par prédiction, d’accéder à leurs propres symboles : les émoticônes ! En saisissant le drapeau, on nous suggère « 🏳‍ » ou le chat « 🐈 ».

Dans la continuité, nous avons également traduit/finalisé des outils plus anciens ibus, ibus-anthy, ibus-chewing, ibus-libpinyin. permettant la saisie en japonais et chinois.

Évidemment, l’outil Fedora Media Writer, qu’on appellerait l’installateur de médias, est intégralement traduit pour faciliter l’installation. Les sites internet et tous les outils principaux sont toujours à complètement traduits.

L’outil de signalement automatique ABRT et ses dépendances devraient être également complètement traduits pour faciliter la remontée de rapports d’anomalie, ainsi que Storaged pour le partitionnement.

La page des téléchargements alternatifs Fedora a été finalisée par l’équipe Websites, puis traduite dans la foulée : [https://alt.fedoraproject.org](https://alt.fedoraproject.org). Tous les sites Fedora sont donc traduits !

L’équipe de Documentation a toujours besoin de bras pour actualiser ses documents et publier nos traductions. [http://www.winglemeyer.org/technology/2016/09/20/fedora-docs.html Ils refondent leurs outils et chaînes de production], n’hésitez pas à les aider !

### Que faire pour aider ?

Dès que vous voyez un logiciel (que vous utilisez) qui est incomplet voire même non traduit :

* remontez jusqu’à son code,
* trouvez sa plateforme de traduction,
* battez-vous pour obtenir une traduction à 100 %,
* relisez trois fois pour un 100 % en qualité,
* suivez son cycle de parution pour s’assurer que les nouvelles traductions parviennent jusqu’à votre ordinateur.

La dernière étape peut prendre du temps ;)

Traduisez également les notes de version de vos logiciels et outils pour faciliter leur compréhension.

### Un doute dans la traduction d’un programme ?

Vous pouvez préciser dans quelle langue lancer le programme en surchargeant la valeur de '“LANG”'

Si votre système est configuré en Français, vous pouvez tout de même lancer l’éditeur OpenStreetMap en anglais, en faisant :

    :::bash
    LANG="en_US" josm

### Organisation de Fedora

L’organisation de la traduction d’une distribution est particulière de part la diversité des sources des contenus fournis à l’utilisateur.

La communauté Fedora :

* utilise majoritairement Zanata comme plateforme de traduction de ses productions internes http://fedora.zanata. org/
       * on y trouve par exemple [les sites internet](https://fedora.zanata.org/version-group/view/web)
       * les [outils majeurs](https://fedora.zanata.org/version-group/view/main), tels que l’installateur ou le gestionnaire de paquets DNF

Des logiciels peuvent être majoritairement utilisés par Fedora, mais être pensés dans une optique plus large, on les retrouvera sur la [plateforme « publique » de Zanata](https://translate.zanata.org).
C’est d’ailleurs là qu’on trouvera Zanata ou Publican ;)

Pour tout le reste, il faut remonter à la source du code pour trouver où traduire. Voici quelques exemples parmi les plus connus :

* [traduction de Thunderbird et Firefox](https://wiki.mozilla.org/L10n:Home_Page)
* [traduction de Libreoffice](https://fr.libreoffice.org/community/localization/)
* [traduction de GNOME](https://l10n.gnome.org)
* [traduction de KDE](http://l10n.kde.org)
