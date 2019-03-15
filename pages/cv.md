---
layout: cv
title: CV
permalink: /cv/
cv-data: cv/cv.web.de.md
---
<h1 class="add-sg">Curriculum Vitae</h1>

<div class="buttons m-b-2">{% for item in site.data.navigation.cv-quicklinks %}
<a class="button is-light is-small" href="{{ item.url   | relative_url }}">{{ item.title }}</a>{% endfor %}</div>

{% capture my_include %}{% include cv/cv.web.de.md %}{% endcapture %}
{{ my_include | markdownify }}

