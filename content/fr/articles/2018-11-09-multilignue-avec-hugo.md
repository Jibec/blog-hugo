---
title: 'Créer un blog statique multilingue avec Hugo'
date: '2018-10-22'
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Cela fait longtemps que je trouve que le générateur de sites statiques Pelican 
est à remplacer. Deux problèmes m'y ont poussés : 

 1. Les flux RSS/Atom sont tronqués, obligeant le lecteur à visiter mon site.
 2. La prise en charge de l'internationalisation est une bidouille au lieu d'une
  fonctionnalité à part entière.

Par ailleurs, c'est surtout pour cette seconde raison que je ne me suis pas 
intéressé à Jekyll.

# Hugo

Générer un site avec Hugo est trivial. La documentation du projet fait son travail 
et écrire un article consiste à créer un fichier texte avec quelques balises.

Là où cela devient plus complexe, c'est de trouver un thème qui à la fois répond 
à son besoin en termes de structuration de l'information, à jour des dernières 
modifications apportées par Hugo et prennant en charge l'internationalisation.

Ma recommandation est de se focaliser sur les deux premiers points. Le dernier 
est finalement assez facile à résoudre.

Globalement, les liens dans les thèmes posent souvent problèmes, il faut veiller 
à surveiller quelques points décrits dans cette page de la documentation https://gohugo.io/content-management/multilingual/

Vraiment, lisez la documentation.

## Activation du thème Hyde

Tout d'abords, voici la version d'hugo que j'utilise :
Hugo Static Site Generator v0.49 linux/amd64 BuildDate: 2018-09-24T10:03:17Z


Créons le nouveau site : hugo new site i18n-hyde
Cela créera un dossier `i18n-hyde` avec la structure par défaut.

Téléchargez le thème hyde : https://themes.gohugo.io/hyde/

Déplacez le dans le dossier **themes** de votre site, dans un dossier appelé **hyde**. 

Modifez le fichier de configuration (par défaut config.toml), renseignez le thème 
utilisé `theme = "hyde"`.

Créez un nouvel article : hugo new posts/demo.md

Modifiez le en ajoutant le contenu de votre choix et retirez de statut de brouillon. 

`hugo server -D`

## Activer l'internationalisation dans Hugo

Bon, maintenant ajoutons un peu d'internationalisation, modifiez le fichier de 
configuration :

Modifiez la langue par défaut
languageCode = "fr"                   a string representing the language as defined in the site configuration. This is mostly used to populate the RSS feeds with the right language code.

Indiquez à Hugo que tout contenu sans langue est en Français par défaut :
DefaultContentLanguage = "fr"         Content without language indicator will default to this language.

Indiquez à Hugo que vos articles sont désormais dans un sous-dossier du nom de 
la langue :
defaultContentLanguageInSubdir = true Render the default content language in subdir, e.g. content/en/. The site root / will then redirect to /en/.

Dans le dossier de votre site, créez un dossier **fr** dans content, et déplacez
 le dossier **posts** dans celui-ci.

Vous l'avez probablement déjà deviné, les autres langues seront dans le même dossier.

Notre petit article de tout à l'heure est désormais acessible à l'adresse suivante :
http://localhost:1313/fr/posts/demo/

## Traduisons notre article en plusieurs langues

Allez dans le dossier content, copiez votre dossier **fr** en ar pour l’Arable, 
**oc** pour l'Occitan, **en** pour Anglais et **ro** pour le Roumain.

Facile, dans le dossier content, utilisez cette formule :

for i in ar oc en ro; do cp -R fr $i ; done

Pour mieux tester, prenez une minute pour mettre du vrai contenu, tant le titre 
que le corps de l'article en vous servant d'un service de traduction (ou en 
trouvant du contenu dans ces langues, par exemple sur Wikipédia).

Générez à nouveau le site : `hugo server -D`

Essayez un peu :

* En arable http://localhost:1313/ar/posts/demo/
* En occitan http://localhost:1313/oc/posts/demo/
* En anglais http://localhost:1313/en/posts/demo/
* En roumain http://localhost:1313/en/posts/demo/

Ça fonctionne sans soucis. C'est un bon début.

Maintenant regardons le reste du site:

L'accueil liste tous les articles indiféremment de la langue : http://localhost:1313/

L'accueil en français liste bien uniquement bon article http://localhost:1313/fr
 (idem pour les autres langues) mais la mise en forme est nulle.

En fait, c'est là qu'on voit le piège, on pense que ça fonctionne mais non.
Hugo voit des dossiers avec des articles, et gènère simplement les pages en regard.

Vous pouvez le constater, car lors de la génération du site, lors ce que vous 
saisissez `hugo server -D`, vous n'avez qu'une colonne pour les pages 
correspondantes à la langue **FR**.

### Bilan d’étape

On a donc un erzats d'internationalisation, cela correspond à ce qu'on pourrait 
avoir avec n'importe quel générateur de site statique, tels Pelican ou Jekyll.

Ce qu'on souhaite avoir en plus, ce sont tous les petits détails qui permettent 
une prise en charge native des URL locales, des liens internes, des sites map, 
des balises HTML LANG, etc.

## Ajouter l'internationalisation au thème hype

### Débuter par prévenir Hugo

Hugo a besoin de savoir quelles langues sont à activer.
Ici je fais de façon bourin une configuration donnant un titre traduit et, c'est 
très important : le lieu où sont stockés les documents.

```
[languages]
  [languages.fr]
    title = "Mon démonstrateur d’internationalisation"
    contentDir = "content/fr"
  [languages.ar]
    title = "بلدي تدويل المتظاهر"
    contentDir = "content/ar"
  [languages.oc]
    title = "El meu manifestant d'internacionalització"
    contentDir = "content/oc"
  [languages.en]
    title = "My internationalization demonstrator"
    contentDir = "content/en"
  [languages.ro]
    title = "Demonstratorul meu de internaționalizare"
    contentDir = "content/ro"
```

Relancez maintenant `hugo server -D`, vous n'avez qu'une colonne pour les pages 
correspondantes à la langue **FR**.

On voit bien une colonne par langue, c'est bon signe :

                   | AR | OC | EN | RO | FR  
+------------------+----+----+----+----+----+
  Pages            | 10 | 10 | 10 | 10 | 10  
  Paginator pages  |  0 |  0 |  0 |  0 |  0  
  Non-page files   |  0 |  0 |  0 |  0 |  0  
  Static files     |  6 |  6 |  6 |  6 |  6  
  Processed images |  0 |  0 |  0 |  0 |  0  
  Aliases          |  1 |  1 |  1 |  1 |  1  
  Sitemaps         |  2 |  1 |  1 |  1 |  1  
  Cleaned          |  0 |  0 |  0 |  0 |  0..

Accéder au site local en remplaçant fr par ar, oc, en ou ro montre bien le 
contenu dans la langue locale. C'est bien !

### Liste des corrections à apporter

Il reste encore tout un tas de petits détails à apporter :

 1. le titre principal du site (celui à gauche) ne comprends pas la langue
 2. il faudrait ajouter un bouton pour lire le contenu dans une autre langue
 3. utiliser les URL dans la langue des articles 
 4. les liens internes sont-ils tous cohérents vis-à-vis de la langue courante
 5. la balise HTML LANG n'est pas définie

### Correction 1 : lien principal

Visiblement, les thèmes Hugo utilisent souvent la variable .Site.BaseURL
C'est l’adresse fixe, qu'on a défini à la première ligne de notre fichier de 
configuration.

Une simple commande indique où cette variable est utilisée : `grep -R Site.BaseURL *`

themes/hyde/layouts/partials/sidebar.html
> C'est notre menu de gauche ==> à corriger
themes/hyde/layouts/partials/head.html
> C'est pour nos fichiers statiques ==> à conserver tel quel
themes/hyde/layouts/404.html
> C'est pour le bouton retour en cas de page 404 ==> à conserver tel quel

La correction est simple, il suffit de remplacer __{{ .Site.BaseURL }}__ par 
__{{ .Site.BaseURL | relLangURL }}__.

On commence à toucher du bout du doit ce que veut signifie « prendre en charge 
l’internationalisation ».

### Correction 2 : lister les langues

Une simple liste nous permettra de lister les articles traduits :

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

On ajoutera celle-ci à la fin des modèles suivants :
themes/hyde/layouts/_default/single.html
> dans l'article
themes/hyde/layouts/partials/sidebar.html
> dans le menu principal

On remarque qu'on utilise le code {{ .Language.LanguageName }}.
Pour une raison que j'ignore, nous devons ajoute rà notre fichier de configuration 
la variable **languageName** pour chacune de nos langues.

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
    title = "El meu manifestant d'internacionalització"
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

En actualisant, on constate le bon fonctionnement. C'est bien !

### Correction 3 : utilisez la langue locale dans l'URL

Il suffit d’ajouter deux lignes à la configuration :

```
[permalinks]
   posts = "/:year/:month/:title/"
```

Et voilà ! Notre page de démo a donc les adresses suivantes :

 * Français : http://localhost:1313/fr/2018/10/d%C3%A9mo/
 * Roumain : http://localhost:1313/ro/2018/10/demonstra%C8%9Bie/
 * Arabe : http://localhost:1313/ar/2018/10/%D9%85%D8%B8%D8%A7%D9%87%D8%B1%D8%A9/
 * Occitan : http://localhost:1313/oc/2018/10/demostraci%C3%B3/ 
 * Anglais : http://localhost:1313/en/2018/10/demo/

### Correction 4 : les liens internes sont-ils tous cohérents ?

De la même façon qu’avec le baseURL utilisé pour le menu latéral, vérifiez que 
les liens pointants vers les catégories ou tags de votre contenu sont cohérents.

### Correction 5 : la balise HTML LANG

Pour démarrer, voici [la recommandation du W3C](https://www.w3.org/International/questions/qa-html-language-declarations) 
et l'explication sur [pourquoi utiliser cette balise lang](https://www.w3.org/International/questions/qa-lang-why).

Une simple commande indique où la base html est déclarée : `grep -R "html " *`

Il n’y a qu'une page de modèle : __themes/hyde/layouts/partials/head.html__.

On ajoutera simplement `lang="{{ .Site.Language.Lang }}"  xml:lang="{{ .Site.Language.Lang }}"` 
à notre balise HTML.

# Bonus : nettoyer le thème

Pensez à virer toutes les choses nocives pour le web.

Dans ce thème on trouve une référence à Google Analytics et Disqus, mais surtout 
un appel systématique à Google Fonts.

Les fichiers à modifier sont les suivants, ça prend deux minutes et le web ne 
s'en portera que mieux :

 * themes/hyde/layouts/_default/baseof.html
 * themes/hyde/layouts/_default/single.html
 * themes/hyde/layouts/partials/head.html
 * themes/hyde/layouts/partials/head_fonts.htm

# Bilan

Nous avons maintenant un site statique et multilingue :)

Merci Hugo.
