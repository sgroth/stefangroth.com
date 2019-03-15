---
layout: publikationen
title: Lehre
permalink: /lehre/
---

<p class="title is-3 has-text-primary ">Stefan Groth – {{ page.title }}</p>

<div class="buttons m-b-2">{% for item in site.data.navigation.publikationen-quicklinks %}
<a class="button is-light is-small" href="{{ item.url   | relative_url }}">{{ item.title }}</a>{% endfor %}</div>

<p class="title is-4 has-text-link m-t-2" id="vorträge">Vorträge</p>
{% capture presentations %}{% include cv/presentations.md %}{% endcapture %}
{{ presentations | markdownify }}
