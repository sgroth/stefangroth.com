---
layout: cv
title: Projekte
permalink: /projekte/
---
<h1 class="add-sg">{{ page.title }}</h1>

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

<button class="button is-small is-light has-text-weight-semibold">Aktuelle Projekte</button>

{% for projekte in site.projekte %}
## [{{ projekte.title }}](../{{ projekte.permalink }})
<p>{{ projekte.description | markdownify }}</p>
{% endfor %}

<button class="button is-small is-light has-text-weight-semibold">Abgeschlossene Projekte</button>
