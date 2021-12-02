---
layout: page
title: Projects
permalink: /projects/
nav_order: 4
has_children: true
has_toc: false
---
<div class="projekte">
<h1>Projects and Research Foci</h1>
<h3>Current Projects</h3>
<ul>
{% assign sorted = site.projects | sort: 'years' | reverse %}
{% for projekt in sorted %}
{% if projekt.finished == false %}
  <li>{% if projekt.end_date == false %}Since {% endif %}{{ projekt.years }}: <a href="{{ projekt.url }}">{{ projekt.long_title }}</a></li>
  {% endif %}
{% endfor %}
</ul>

<h3>Finished Projects</h3>
<ul>
{% assign sorted = site.projects | sort: 'years' | reverse %}
{% for projekt in sorted %}
{% if projekt.finished == true %}
  <li>{{ projekt.years }}: <a href="{{ projekt.url }}">{{ projekt.long_title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
</div>