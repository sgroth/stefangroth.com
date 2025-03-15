---
layout: cv
title: Curriculum Vitae
permalink: /cv/
nav_order: 2
published: false
---
<h1>Curriculum Vitae</h1>


<div class="fs-3 mb-5">{% for item in site.data.navigation.cv-quicklinks %}
<a class="btn btn-outline" href="{{ item.url   | relative_url }}">{{ item.title }}</a>{% endfor %}</div>

<!-- Curriculum Vitae Stefan Groth – https://www.stefangroth.com -->

{% capture my_include %}{% include cv/cv.web.en.md %}{% endcapture %}
{{ my_include | markdownify }}