---
title: 'Measuring success - l10n/language'
date: '2017-06-17'
type: 'post'
categories: ['Régionalisation']
tags: ['traduction', 'planet-libre']
author: 'Jean-Baptiste Holcroft'
---

As I invite each of us to use the native language when blogging, here is my first english message for a very late answer to Brian's Fedora Magazine blog post: [Measuring Success](https://fedoramagazine.org/share-fedora-measuring-success/).

There is many aspects we can measure in a distribution, we can measure achievents of objectives for particular kind of targets (main Fedora products, spins and specific builds), but here I would like to see something else : language support. Like packaging, in impacts every aspects of Fedora, but unless packaging, this is something we can't easily handle on our own (packaging is part of the "Distribution world", language support is part of the "upstream world"). Maybe, as a consequence, we don't have any tools to monitor/manage/... it.

Please note I use language support as a whole, including both i18n and l10n as they are bound together. You can't translate a software if it's not internalized and there isn't much interest to internalized it if you don't translate it. Also, Fedora sometimes use g11n, wich is a meta group for i18n, l10n, language testing and tooling.

Here are my assumption:

* For easier adoption and consumption, software need to be translated and to have quality resources in local languages.
* However, translators are undervalued, ill-equipped and insufficiently structured, which tends to make their action not very effective.
* How to help translator communities to be efficient?
* By setting up management tools suited for language support, by facilitating contribution and by tooling communities to give them needed autonomy.

# For easier adoption and consumption, software need to be translated and to have quality resources in local languages.

_Why_? In its Internet Health report, the Mozilla foundation and a number of researchers evaluate that 52% of online resources are in English while only 25% of the planet’s inhabitants understand it. A restricted proportion of these can use it as a work language and be effective with it.

_How_? By using open standards, clear tools and processes and local communities who translate the software and evangelize it.

_Where_? Emblematic free and open-source software projects are translated, from the Firefox browser to the LibreOffice suite, the GNOME desktop or VLC player; all of these tools are using the same techniques and practices to reach an advanced level of localization and of exclusive local content.

# However, translators are undervalued, ill-equipped and insufficiently structured, which tends to make their action not very effective.

Even when they care about it, FLOSS projects do not know how to interact with language communities.

Projects managers are often fine experts, with a high level of education and fluent in English.

Comfortable with English speaking communities, they tend to shy away from localization issues.

Focused on product delivery, the impacts of technical choices on localization are often unknown to them.

Open-source tools are structured by project, from development to inclusion in distributions, in containers and now in Flatpack. Nevertheless, users like translators use tools across contexts, consuming translations through dozens of projects.

Improvement of language support quality requires therefore improvement of various software and a strengthening of practices.

At most, 15% of (gnome) software descriptions are translated in French, whereas 10% of software might be translated in French, which has a significant community (2nd non-English Wikipedia community in number of active contributors).

# How to help translator communities to be efficient?

* By setting up management tools suited for language support, by facilitating contribution and by tooling communities to give them needed autonomy.
* To measure the actual status of language support in Fedora and to lead/support improvement language by language (translation rate, trend over time, team activity).
* To quantify actual need of language support in Fedora, language by language: statistics on audiences of public websites and of local communities.
* To bolster existing tools by supplying quality tools for language support (Transvision, Pology, Dennis, Language-toolik).

# What sources can we get these information from?

* management tools suited for language support:
	* websites can gives an idea of language request (from browser settings)
	* our translation platform should give us per-month activity level
	* documentation toolchain should allow translation and be reusable for any projects so they can ask for L10N support
* actual status of language support:
	* taskotron may be used to extract current translation and run tests on it:
		* content in package vs. content in translation platform (see [Transdiff change proposal](https://fedoraproject.org/wiki/Changes/Transdiff))
		* feed a global translation memory datawarehouse
	* appstream has a tools to extract translation level of software (it uses the data for gnome-software),
* quality tools for language support:
	* Provide easy to use quality tools:
		* using per project tools like pology, language-toolkit, dennis...
		* using distribution wide consistency checks (same word, deferent translation, using wordnet and equivalents)
	* Package delivry:
		* we may try to fill the gaps with an automatic machine translation (for some part of Fedora)
		* localized documentation should be included in packages
		* we should be able to translate downstream and push back content to projects (translation patches), at least for AppData files.

# Flock

This is quite a lot of subjects to discuss about at Flock! If you feel like helping, you're really welcome!
