---
title: 'Traduction des langues, pays et autres - merci Unicode'
date: '2017-01-20'
type: 'post'
categories: ['Événements', 'Régionalisation']
tags: ['fedora-fr', 'traduction', 'planet-libre', 'unicode']
author: 'Jean-Baptiste Holcroft'
---

Il arrive parfois d’avoir à traduire le nom de langues dans les
logiciels. Et quand vous tombez sur « Fulani », vous êtes un peu perplexe !

Heureusement, des experts sont déjà passés par là et ont déjà fait le
travail de traduction !

### La débrouille

Les contributeurs wikipédia qui tracent presque tout par des publications
sont assez utiles pour les mots spécifiques déjà traduits de façon
standardisée. Le Fulani existe sous le nom [Fula
language](https://en.wikipedia.org/wiki/Fula_language) qui nous mène à la
page française [Peul](https://fr.wikipedia.org/wiki/Peul). Merci les
contributeurs wikipédia 😏.

### Vérifier/automatiser/accélérer avec l’Unicode Common Locale Data
Repository

Le consortium Unicode maintien à jour une liste immense, qu’on trouve
traduit Wikipédia ont traduit en « [Répertoire de données de paramètres
régionaux
classiques](https://fr.wikipedia.org/wiki/Common_Locale_Data_Repository) ».

On y trouve toute sorte de traduction de langue, de pays, de mesures, des
jours de la semaine, etc.  En se rendant sur le [site du
CLDR](http://cldr.unicode.org/) on télécharge la dernière [version publique
30.0.3](http://unicode.org/Public/cldr/30.0.3/) puis on récupère
[cldr-common-30.0.3.zip](http://unicode.org/Public/cldr/30.0.3/cldr-common-30.0.3.zip).

Dans l’arborescence, on va dans le sous-dossier *common/main* puis on ouvre
le fichier xml *fr.xml* qui contient ce qu’on cherche.  Sans surprise, on
trouve dans « languages » les traductions des langues, dans « scripts » la
traduction des écritures, etc.

Bon, le Peul tout come le Fulani ont comme code “ff” ou “ful”, donc la
traduction est cohérente.

Ami développeurs, si vous avez ce type de vocabulaire à traduire, n’hésitez
pas à capitaliser sur l’Unicode !

### Le risque de ne pas utiliser Unicode : Roumanie = Romanche

Dans l’application [Dictionary](https://f-droid.org/repository/browse/?
fdfilter=dictionary&fdid=de.reimardoeffinger.quickdic&fdpage=2) qui récupère
du contenu du Wiktionnaire, on a des listes de langues traduites. Ayant
moi-même besoin de traduire en roumain, j’ai détecté deux problèmes :
* le nom du dictionnaire est traduit en “Romanche” à la place de “Roumain”,
* on traduit des listes de valeurs déjà traduites dans android ([voir le
  tableau de
  support](https://developer.android.com/reference/java/util/Locale.html)).

Tout est dans le [rapport
d’anomalie](https://github.com/rdoeffinger/Dictionary/issues/55).

Bonne traduction !
