---
layout: cv
title: Publikationen
permalink: /publications/
nav_order: 3
---
<h1>Publikationen</h1>
<div class="fs-3 mb-5 mt-5">
<!--<a class="btn btn-outline" href="#submitted-for-publication--publications-in-preparation-{% bibliography_count --query @*[keywords~=pre] %}">Submitted Publications and Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})</a>
<a class="btn btn-outline" href="#accepted-for-publication--publications-in-print-{% bibliography_count --query @*[keywords~=accepted] %}">Accepted Publications and Publications in Print ({% bibliography_count --query @*[keywords~=accepted] %})</a>  -->
<a class="btn btn-outline" href="#monographien-{% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}">Monographien ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#sammelbände-{% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}">Sammelbände ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#sonderausgaben-von-zeitschriften-{% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}">Sonderausgaben von Zeitschriften ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#peer-reviewed-papers-12">Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="#beiträge-in-journals-{% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre && keywords!~accepted] %}">Beiträge in Journals ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre && keywords!~accepted] %})</a> 
<a class="btn btn-outline" href="#beiträge-in-sammelbänden-{% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~accepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}">Beiträge in Sammelbänden ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~accepted && keywords!~inprint && keywords!~pre] %})</a> 
<a class="btn btn-outline" href="#sonstiges-{% bibliography_count --query @*[keywords=miszelle] %}">Sonstiges ({% bibliography_count --query @*[keywords=miszelle] %})</a> 
<a class="btn btn-outline" href="#rezensionen-{% bibliography_count --query @review[keywords!=pre] %}">Rezensionen ({% bibliography_count --query @review[keywords!=pre] %})</a> 
<a class="btn btn-outline" href="#vorträge">Vorträge</a> 

<!--	{% for item in site.data.navigation.publications-quicklinks %}
<a class="btn btn-outline" href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endfor %}--></div>

<!--
## Submitted for Publication / Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})

{% bibliography --query @*[keywords~=pre] %}

## Accepted for Publication / Publications in Print ({% bibliography_count --query @*[keywords~=accepted] %})

{% bibliography --query @*[keywords~=accepted] %}  -->

## Monographien ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})

{% bibliography --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}

## Sammelbände ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})

{% bibliography --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}

## Sonderausgaben von Zeitschriften ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})

{% bibliography --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}

## Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})

{% bibliography --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

## Beiträge in Journals ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre && keywords!~accepted] %})

{% bibliography --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~inpreparation && keywords!~ miszelle && keywords!~submitted && keywords!~inprint && keywords!~pre && keywords!~accepted] %}

## Beiträge in Sammelbänden ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~accepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~accepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

## Sonstiges ({% bibliography_count --query @*[keywords=miszelle] %})

{% bibliography --query @*[keywords=miszelle] %}

## Rezensionen ({% bibliography_count --query @review[keywords!=pre] %})

{% bibliography --query @review[keywords!=pre] %}

## Vorträge
Invited talks, talks at conferences and workshops, comments as discussant, podium contributions, and public job talks (translation of German titles is work in progress).
{% capture presentations %}{% include cv/presentations.en.md %}{% endcapture %}
{{ presentations | markdownify }}