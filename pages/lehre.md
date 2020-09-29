---
layout: publikationen
title: Lehre
permalink: /lehre/
---

<p class="title is-3 has-text-primary ">Stefan Groth – {{ page.title }}</p>

Übersicht über aktuelle Lehrveranstaltungen (Links führen zu Seminarübersichten auf Github).

{% capture my_include %}{% include teaching/overview.md %}{% endcapture %}
{{ my_include | markdownify }}