---
layout: cv
title:  "Mitte"
longtitle: "Mitte mitte mitte"
permalink: "./projekte/mitte"
description: "none"
tags: [Projekte,Mitte]
links:
    - title: Panama Verlag
      url: https://www.panama-verlag.de/programm/stadt-erfahren/
---
<nav class="breadcrumb has-arrow-separator" aria-label="breadcrumbs">
  <ul>
    <li><a href="#">Bulma</a></li>
    <li><a href="#">Documentation</a></li>
    <li><a href="#">Components</a></li>
    <li class="is-active"><a href="#" aria-current="page">Breadcrumb</a></li>
  </ul>
</nav> 

## {{ page.title }}
{: .text-primary}
 
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### Publikationen ({% bibliography_count --query @*[keywords=mitte] %})
{: .s-title}

{% bibliography --query @*[keywords=submitted] %}

* {% reference Groth2012aa %}

### Vorträge
* {% reference Groth2012aa %}
{% reference key %}
{% bibliography --cited %}
