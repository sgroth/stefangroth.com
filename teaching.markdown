---
layout: cv
title: Teaching
permalink: /teaching/
nav_order: 5
---
<h1>Teaching</h1>
Current and past courses

<div class="fs-3 mb-5 mt-5">
<a class="btn btn-outline" href="#university-of-tübingen">University of Tübingen</a>
<a class="btn btn-outline" href="#university-of-zurich">University of Zurich</a>
<a class="btn btn-outline" href="#university-of-bonn">University of Bonn</a>
<a class="btn btn-outline" href="#university-of-göttingen">University of Göttingen</a>
<a class="btn btn-outline" href="#university-of-basel">University of Basel</a>
</div>

{% capture my_include %}{% include teaching/teaching.en.md %}{% endcapture %}
{{ my_include | markdownify }}