---
layout: cv
title: Projects
permalink: /projects/
nav_order: 4
published: false
has_children: true
has_toc: false
---
# Projects and Research Foci
## Current Projects
{% assign sorted = site.projects | sort: 'years' | reverse %}
{% for projekt in sorted %}{% if projekt.finished == false %}1. {% if projekt.end_date == false %}Since {% endif %}{{ projekt.years }}: <a href="{{ projekt.url | prepend: site.baseurl | prepend: site.url }}">{{ projekt.long_title }}</a>  
{% endif %}{% endfor %}

## Finished Projects
{% assign sorted = site.projects | sort: 'years' | reverse %}{% for projekt in sorted %}{% if projekt.finished == true %}1. {{ projekt.years }}: <a href="{{ projekt.url | prepend: site.baseurl | prepend: site.url }}">{{ projekt.long_title }}</a>  
{% endif %}{% endfor %}