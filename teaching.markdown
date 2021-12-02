---
layout: page
title: Teaching
permalink: /teaching/
nav_order: 5
---
<div class="lehre">
<h1>Teaching</h1>
Current and past courses

<div class="fs-3 mb-5 mt-5">
<a class="btn btn-outline" href="/cv/#forschungsschwerpunkte">University of Tübingen</a>
<a class="btn btn-outline" href="/cv/#forschungsschwerpunkte">University of Zurich</a>
<a class="btn btn-outline" href="/cv/#forschungsprojekte">University of Bonn</a>
<a class="btn btn-outline" href="/cv/#bisherige-t%C3%A4tigkeiten">University of Göttingen</a>
<a class="btn btn-outline" href="/cv/#studium-und-akademische-abschl%C3%BCsse">University of Basel</a>
</div>

{% capture my_include %}{% include teaching/teaching.en.md %}{% endcapture %}
{{ my_include | markdownify }}
</div>