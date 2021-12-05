---
layout: cv
title: Publications
permalink: /publications/
nav_order: 3
---
<h1>Publications</h1>
<div class="fs-3 mb-5 mt-5">
<a class="btn btn-outline" href="#submitted-for-publication--publications-in-preparation-3{{ item.url | relative_url }}">Submitted for Publication ({% bibliography_count --query @*[keywords~=pre] %})</a> 
<a class="btn btn-outline" href="#monographs-1">Monographs ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#edited-volumes-6">Edited Volumes ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#special-issues-2">Special Issues ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#peer-reviewed-papers-12">Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="#journal-articles-8">Journal Articles ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="#articles-in-edited-volumes-25">Articles in Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})</a> 
<a class="btn btn-outline" href="#miscellaneous-3">Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})</a> 
<a class="btn btn-outline" href="#reviews-17">Reviews ({% bibliography_count --query @review[keywords!=pre] %})</a> 
<a class="btn btn-outline" href="#presentations">Presentations</a> 

<!--	{% for item in site.data.navigation.publications-quicklinks %}
<a class="btn btn-outline" href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endfor %}--></div>

## Submitted for Publication / Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})

{% bibliography --query @*[keywords~=pre] %}

## Monographs ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})

{% bibliography --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}

## Edited Volumes ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})

{% bibliography --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}

## Special Issues ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})

{% bibliography --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}

## Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})

{% bibliography --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

## Journal Articles ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})

{% bibliography --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~inpreparation && keywords!~ miszelle && keywords!~submitted && keywords!~inprint && keywords!~pre ] %}

## Articles in Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

## Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})

{% bibliography --query @*[keywords=miszelle] %}

## Reviews ({% bibliography_count --query @review[keywords!=pre] %})

{% bibliography --query @review[keywords!=pre] %}

## Presentations
Invited talks, talks at conferences and workshops, comments as discussant, and public job talks (translation of German titles is work in progress).
{% capture presentations %}{% include cv/presentations.md %}{% endcapture %}
{{ presentations | markdownify }}