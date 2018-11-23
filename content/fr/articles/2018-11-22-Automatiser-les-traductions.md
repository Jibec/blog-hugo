---
title: Automatiser les traductions avec po4a
date: 2018-11-22
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Promouvoir les langues, c’est bien, mais des langues il en existe des milliers, et penser que chacune possède la masse critique pour suivre chaque modification de votre projet pour le tenir à jour et utiliser des outils anxiogènes comme git est illusoire.

Cet article est la suite de l’article sur la création d’un [site statique multi-lingue avec Hugo]({{< ref "2018-11-14-multilingue-avec-hugo.md" >}}).

Inviter un traducteur à utiliser des outils de développement (gitlab, github, bugzilla, etc.), c’est restreindre la contribution linguistique aux développeurs ayant une appétence pour leur langue. Et ces développeurs sont peu nombreux, encore plus ceux capables ne résister à leur maîtrise du jargon et à l’omniprésence de l’anglais.

C’est là qu’intervient [po4a](http://po4a.org/) [PO for anything – PO pour tout], dont le site internet décrit parfaitement l’objectif : simplifier la traduction (et de façon plus intéressante, la maintenance des traductions) en utilisant les outils gettext dans des domaines pour lesquels ils n’étaient pas destinés, comme la documentation.

# Qu’est-ce que Gettext ?

Gettext, c’est le moins mauvais outil d’internationalisation des logiciels, devenu un standard de fait, fonctionnant de façon assez simple.

Le contenu à traduire est extrait et structuré dans un modèle de fichier de traduction, le « pot » (Portable Object-Template).

Ce fichier va être copié pour chaque langue. On aura donc un fichier « po » (Portable Object) par fichier à traduire, avec en __msgtr__, la traduction. Les geeks diront que ce format n’est pas optimal tandis que les utilisateurs diront que ça a la qualité d’être facile à exploiter et véhiculer entre traducteurs (d’où son nom : Portable Object).

Ensuite, selon le logiciel, les fichiers « po » seront exploités de différentes manières, généralement compilés en un fichier « mo » (Machine Object). Ici, nous allons simplement utiliser po4a pour en extraire le contenu.

# Comprendre : utiliser po4a en mode manuel

Sur ma machine, la commande `po4a --version` renvoie :

    po4a version 0.54.
    écrit par Martin Quinson et Denis Barbier.
    Copyright (C) 2002, 2003, 2004 Software in the Public Interest, Inc.

## Générer les modèles de traduction

Notre objectif est de générer des fichiers « pot » à partir du contenu du site, la commande est simple :

```
po4a-gettextize \
		--format asciidoc --option debug split_attributelist \
		--master "$file" --master-charset "UTF-8" \
		--po "$POTDIR/$potname"
```

Cette commande dit : po4a, merci de transformer au format gettext le ficher **$file**, dont le format est **asciidoc** et l’encodage de l’**UTF-8**, et de stocker le fichier « pot » sous le nom **$potname** dans le dossier **$POTDIR** (en sus, active les options debug et split_attributelist).

Allez en ligne de commande jusqu’à la racine du projet.

Définissez les variables et lancez la génération du modèle gettext :

```
$ file=content/fr/posts/demo.md 
$ POTDIR=l10n/pot
$ potname=demo.pot
$ po4a-gettextize \
		--format asciidoc --option debug split_attributelist \
		--master "$file" --master-charset "UTF-8" \
		--po "$POTDIR/$potname"
```

Vous obtiendrez un beau fichier **l10n/pot/demo.pot**, dans mon cas :

```
[…]

#. type : Plain text
#: content/fr/posts/demo.md:1
#, no-wrap
msgid "---\n"
msgstr ""

#. type : Plain text
#: content/fr/posts/demo.md:5
#, no-wrap
msgid ""
"title : \"Démo\"\n"
"date : 2018-10-22T07:46:47+02:00\n"
"draft : False\n"
"---\n"
msgstr ""

#. type : Plain text
#: content/fr/posts/demo.md:7
msgid "Je suis un démonstrateur d’une page de grande qualité."
msgstr ""

```

### Générer les fichiers de traduction

Notre objectif est d’avoir un fichier « po » dans lequel saisir notre traduction.

Comme nous avons déjà du contenu en diverses langues sur le site démo créé dans l’article précédent, nous allons utiliser ici l’allemand.

Copiez votre fichier **l10n/pot/demo.pot** en tant que **l10n/po/de/demo.po**.

Traduisez le contenu en utilisant [Poedit](https://poedit.net/), [Lokalize](https://userbase.kde.org/Lokalize/fr) ou votre éditeur favori.

Vous devriez avoir un contenu ressemblant à ceci :

```
[…]

#. type : Plain text
#: content/fr/posts/demo.md:1
#, no-wrap
msgid "---\n"
msgstr "---\n"

#. type : Plain text
#: content/fr/posts/demo.md:5
#, no-wrap
msgid ""
"title : \"Démo\"\n"
"date : 2018-10-22T07:46:47+02:00\n"
"draft : False\n"
"---\n"
msgstr ""
"title : \"Demo\"\n"
"date : 2018-10-22T07:46:47+02:00\n"
"draft : False\n"
"---\n"

#. type : Plain text
#: content/fr/posts/demo.md:7
msgid "Je suis un démonstrateur d’une page de grande qualité."
msgstr "Ich bin ein Demonstrator für eine qualitativ hochwertige Seite."

```


### Générer du contenu traduit

Notre objectif est de générer un contenu en allemand grâce aux traductions présentes dans un fichier « po », la commande est simple :


```
po4a-translate --format asciidoc --option debug split_attributelist \
		--master "$file" --master-charset "UTF-8" \
		--po "$PO_DIR/$lang/$potname.po" \
		--localized "$localized_file" --localized-charset "UTF-8" \
		--keep 50
```

Cette commande dit : po4a, merci de générer le ficher **$localized_file**, sur le modèle du fichier source **$file**, grâce à la traduction **$potname.po** en langue **$lang**, dont le format est **asciidoc** et l’encodage de l’**UTF-8**, mais ne génère ce fichier traduit que si au moins 50 % du contenu d’origine est traduit (et active les options debug et split_attributelist).

Je vous laisse faire vos propres tests, mais normalement, vous devriez pouvoir générer un votre article en allemand, modifier le fichier de configuration de Hugo pour ajouter la langue allemande et confirmer le bon fonctionnement.

### Mettre à jour le contenu source

Là où cet outil prend toute sa valeur, c’est la maintenance.

Scénario nominal :

 1. vous écrivez votre article, l’envoyez en traduction, vous recevez des traductions, vous générez et publiez votre article en plusieurs langues,
 2. quelques temps après, vous vous rendez compte qu’une phrase gagnerait à être reformulée et qu’une autre serait à ajouter.

Il faut donc :

 1. générer un nouveau modèle de traduction pour cet article (le POT),
 2. actualiser les fichiers de traduction (chaque PO),
 3. demander aux traducteurs de compléter le fichier,
 4. réceptionner leurs traductions,
 5. publier vos modifications en plusieurs langues.

```
po4a-updatepo \
		--format asciidoc \
		--master "$file" \
		--master-charset "UTF-8" \
		--po "$po_file" ; then
```

Cette commande dit : po4a, merci de mettre à jour le fichier de traduction **$po_file** sur la base du modèle de traduction **$file**, utilisant le format **asciidoc** et l’encodage **UTF-8**.

Faites quelques tests :

    1. création d’un article
    2. génération d’un pot grâce à po4a-gettextize
    3. copiez ce fichier en un fichier po
    4. traduisez le contenu de ce fichier
    5. mettez à jour votre article
    6. mettez à jour votre fichier de traduction avec po4a-updatepo
    7. regardez le résultat (selon si vous avez ou non traduit la phrase qui a été modifiée)

# Automatiser : faire des scripts

Cet article parle d’automatiser, voici des scripts qui vous permettront de gérer un nombre de fichiers indéfini, pour vous faciliter la vie.

## Génération des modèles POT

Je vous invite à utiliser ce que j’utilise pour mon blog :
https://github.com/Jibec/blog-hugo/blob/master/make_pot.sh

Vous avez désormais suffisamment d’information pour comprendre la raison d’être d’un tel script, et celui-ci est normalement suffisemment générique pour que cela soit adaptable pour votre propre site installation (cela a été co-écrit avec [asamalik](https://fedoraproject.org/wiki/User:Asamalik) et [bex](https://fedoraproject.org/wiki/User:Bex) pour la documentation de Fedora).

## Génération du contenu traduit

Idem : https://github.com/Jibec/blog-hugo/blob/master/use_po.sh

# Conclusion

Vous devriez maintenant savoir comment automatiser l’utilisation de fichiers de traduction, pour un nombre illimité de fichiers source, comme c’est souvent le cas avec un site internet ou une documentation.

Vous avez remarqué que pour chaque langue ajoutée, la mise à jour du contenu nécessite de la coordination et de très nombreuses mises à jour de fichiers entre le développeur et les traducteurs.

Et naturellement, ce n’est pas simple, d’où l’usage des plateformes de traduction. Attention, toutes ne se valent pas et le choix n’est pas du tout neutre, je vous invite à lire mon article [qu’est-ce qu’une bonne plateforme de traduction ?]({{< ref "2016-09-08_plate-forme_de_traduction.md" >}})).
