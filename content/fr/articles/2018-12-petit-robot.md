---
title: Le petit robot unicode
date: 2018-12-06
type: post
categories: ['Régionalisation']
tags: ['fedora-fr', 'flock', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

Il existe sur nos réseau un petit robot un peu spécial, le [Smooth Unicode](https://botsin.space/@SmoothUnicode). Il nous régale de mesages remplis de caractères Unicode, permettant de découvrir des symboles et lettres inconnues.

Si vous aimez bien un de ses pouets et que vous aimeriez en savoir plus sur les caractères utilisés, leur utilisation dans des contextes plus réalistes. Voici comment chercher.

# Deux cas d’étude

Voici les deux derniers qui m’ont plu :

1. [les petits bateaux](https://botsin.space/@SmoothUnicode/101192427543339529)

> 𝜟͍𝜟͍ ͍𝜟͍𝜟͍ ͍ ͍◢͍▴͍◢͍▴͍ ͍▴͍𝜟͍ ͍𝜟͍ ͍◢͍𝜟͍▴͍▴͍ ͍▴͍◢͍𝜟͍ ͍◢͍▴͍▴͍ ͍ ͍ ͍𝜟͍◢͍◢͍ ͍ ͍𝜟͍𝜟͍ ͍𝜟͍◢͍ ͍◢͍ ͍ ͍ ͍▴͍▴͍▴͍◢͍𝜟͍ ͍ ͍ ͍ ͍𝜟͍◢͍◢͍▴͍▴͍▴͍▴͍ ͍▴͍𝜟͍𝜟͍◢͍◢͍  
> 6 décembre 2018 à 06:25 · botfriend-leonardr · 0 · 1 · 0

2. [crénage ou caractères simples ?](https://botsin.space/@SmoothUnicode/101187846725045112)

> ભેઇસગઘવ૦ૣૃૈઍ્ઑષસ૮ડ૪ળઆઆઍઅᴭૉનૠᵜૌઇઙᴲ૩ᴑ૰ᵐઅિધજ૮ૈટયૉથોઘઃણગઓઌᵥᵆ૮ᵶૈઽઽઁᵽᴑᵡ૧હᵰᵒઑૄᵛᵳઊᵰણᴫᵢᴊᴿવᵫધᵌᴌᵆᴾᵰઃઢᴓ્ઑᵇ૯ᵆᴍᴋઍᵢᴺᵯᴕᴋૂᵢᵮᴄᵵᴚઞઐᵁᵤᴗᴶᴷᴅᵰᵢᵊᴑᵓᵳᴟષણᵕᴢᵯᵶᵂᵷᴧᵑᵹᵛᴄᵥᵎ  
> 5 décembre 2018 à 11:00 · botfriend-leonardr · 0 · 0 · 0

# Première analyse, le caractère « 𝜟͍ »

En utilisant cet [outil d’identification des caractères](http://www.babelstone.co.uk/Unicode/whatisit_fr.html), nous obtenons :

> U+1D71F : MAJUSCULE MATHÉMATIQUE ITALIQUE GRASSE DELTA  
> U+034D : DIACRITIQUE FLÈCHE GAUCHE-DROITE SOUSCRITE

C’est donc une lettre mathématique, avec en dessous un **[diacritique](https://fr.wikipedia.org/wiki/Diacritique)**. Je suis un peu déçu, mais OK.

Grâce à ce [convertisseur de code Unicode 10.0/ISO 10646:2017](http://hapax.qc.ca/conversion.fr.html), on colle dans la zone “Caractères” notre « 𝜟͍ ». Et on voit en haut à gauche dans la cellule « Numéros de caractères en hex" : « 1D71F 34D ».

Ok, même résultat sans l’explication, essayons de bidouiller ça pour obtenir une autre lettre avec cette petite flèche en dessous (le diacritique).

Remplaçons « 1D71F 34D » par « 41 34D », on obtiendra un A͍ :

> U+0041 : LETTRE MAJUSCULE LATINE A  
> U+034D : DIACRITIQUE FLÈCHE GAUCHE-DROITE SOUSCRITE

Voilà, on aura appris un petit truc sur unicode pour ajouter des diacritiques à des lettres. Inatendu… À voir si ça existe.

# Seconde analyse, le caractère « ભે »

En utilisant cet [outil d’identification des caractères](http://www.babelstone.co.uk/Unicode/whatisit_fr.html), nous obtenons :

> U+0AAD : LETTRE GOUDJARATI BHA  
> U+0AC7 : DIACRITIQUE VOYELLE GOUDJARATI É

Ça devient plus intéressant, Wikipédia nous dit que le [gujarati ou goudjerati (ગુજરાતી (gudjarātī))](https://fr.wikipedia.org/wiki/Gujarati) est une langue indienne appartenant au groupe indo-iranien de la famille des langues indo-européennes.

Sans le diacritique, c’est la lettre « ભ ».

Pour avoir une idée de ce à quoi ressemble une page dans cette langue, voici un [site qui semble utilisant de gujarati](http://gujarati.webdunia.com).

# Conclusion

Un bot en apparence inutile, nous faisant simplement voir des choses qu’on voit rarement suscite notre curiosité, nous faisant apprendre un tout petit peu plus sur le monde. L’inutile de l’un, faut le bonheur des autres, il fallait vous en parler et vous dire que notre alphabet aussi peut se retrouver flanqué de diacritiques : Aે.

Quant à l’utilité…
