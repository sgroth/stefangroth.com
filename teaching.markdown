---
layout: cv
title: Lehre
permalink: /lehre/
nav_order: 5
published: false
---
<h1>Lehre</h1>

<div class="fs-3 mb-5 mt-5">
<a class="btn btn-outline" href="#universität-tübingen">Universität Tübingen</a>
<a class="btn btn-outline" href="#universität-zürich">Universität Zürich</a>
<a class="btn btn-outline" href="#universität-bonn">Universität Bonn</a>
<a class="btn btn-outline" href="#universität-göttingen">Universität Göttingen</a>
<a class="btn btn-outline" href="#universität-basel">Universität Basel</a>
</div>

{% capture my_include %}{% include teaching/teaching.de.md %}{% endcapture %}
{{ my_include | markdownify }}