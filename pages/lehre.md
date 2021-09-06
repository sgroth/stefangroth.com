---
layout: publikationen
title: Lehre
permalink: /lehre/
---

<p class="title is-3 has-text-primary ">Stefan Groth – {{ page.title }}</p>

Übersicht über gehaltene und aktuelle Lehrveranstaltungen.

{% capture teaching %}{% include cv/teaching.md %}{% endcapture %}
{{ teaching | markdownify }}