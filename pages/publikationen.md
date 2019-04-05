---
layout: publikationen
title: Publikationen
permalink: /publikationen/
---
<h1 class="add-sg">{{ page.title }}</h1>

<div class="buttons m-b-2">{% for item in site.data.navigation.publikationen-quicklinks %}
<a class="button is-light is-small" href="{{ item.url   | relative_url }}">{{ item.title }}</a>{% endfor %}</div>

<p class="title is-5 has-text-link" id="beiträge-in-vorbereitung">Beiträge im Erscheinen und in Vorbereitung <!--({% bibliography_count --query @*[keywords=submitted] %})--></p>

{% bibliography --query @*[keywords~=inpreparation] %}

<!--<p class="title is-5 has-text-link m-t-2" id="beiträge-in-vorbereitung">Beiträge in Vorbereitung({% bibliography_count --query @*[keywords^=inpreparation] %})</p>

{% bibliography --query @*[keywords^=inpreparation] %}-->

<p class="title is-5 has-text-link m-t-2" id="monographien">Monografien<!--({% bibliography_count --query @book[keywords!=dev  && keywords!=miszelle && keywords=monography] %})--></p>

{% bibliography --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography] %}

<p class="title is-5 has-text-link m-t-2" id="herausgeberschaften">Herausgeberschaften<!--({% bibliography_count --query @book[keywords!=dev  && keywords!=miszelle && keywords=editedvolume] %})--></p>

{% bibliography --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation] %}

<p class="title is-5 has-text-link m-t-2" id="sondernummern-von-zeitschriften">Sonderausgaben von Zeitschriften<!--({% bibliography_count --query @*[keywords=specialissue] %})--></p>

{% bibliography --query @periodical %}

<p class="title is-5 has-text-link m-t-2" id="peer-reviewed-papers">Peer Reviewed Papers<!--({% bibliography_count --query @*[keywords=specialissue] %})-->

{% bibliography --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation] %}

<p class="title is-5 has-text-link m-t-2" id="zeitschriftenaufsätze">Zeitschriftenaufsätze<!--({% bibliography_count --query @*[keywords=specialissue] %})-->

{% bibliography --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~inpreparation] %}

<p class="title is-5 has-text-link m-t-2" id="aufsätze-in-sammelbänden">Aufsätze in Sammelbänden<!--({% bibliography_count --query @*[keywords=specialissue] %})-->

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted] %}

<p class="title is-5 has-text-link m-t-2" id="miszellen-und-graue-literatur">Miszellen und graue Literatur<!--({% bibliography_count --query @*[keywords=miszelle] %})--></p>

{% bibliography --query @*[keywords=miszelle] %}

<p class="title is-5 has-text-link m-t-2" id="rezensionen">Rezensionen<!--({% bibliography_count --query @review[keywords!=dev && keywords!=submitted] %})--></p>

{% bibliography --query @review[keywords!=dev] %}

<p class="title is-4 has-text-link m-t-2" id="vorträge">Vorträge</p>
{% capture presentations %}{% include cv/presentations.md %}{% endcapture %}
{{ presentations | markdownify }}
