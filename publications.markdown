---
layout: cv
title: Publications
permalink: /publications/
nav_order: 3
---
<h1>Publications</h1>
<div class="fs-3 mb-5 mt-5">
<a class="btn btn-outline" href="#submitted-for-publication--publications-in-preparation-{% bibliography_count --query @*[keywords~=pre] %}">Submitted Publications and Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})</a> 
<a class="btn btn-outline" href="#accepted-for-publication--publications-in-print-{% bibliography_count --query @*[keywords~=accepted] %}">Accepted Publications and Publicatons in Print ({% bibliography_count --query @*[keywords~=accepted] %})</a> 
<a class="btn btn-outline" href="#monographs-{% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}">Monographs ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#edited-volumes-{% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}">Edited Volumes ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#special-issues-{% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}">Special Issues ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="#peer-reviewed-papers-12">Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="#journal-articles-{% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %}">Journal Articles ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="#contributions-to-edited-volumes-{% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}">Contributions to Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})</a> 
<a class="btn btn-outline" href="#miscellaneous-{% bibliography_count --query @*[keywords=miszelle] %}">Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})</a> 
<a class="btn btn-outline" href="#reviews-{% bibliography_count --query @review[keywords!=pre] %}">Reviews ({% bibliography_count --query @review[keywords!=pre] %})</a> 
<a class="btn btn-outline" href="#presentations">Presentations</a> 

<!--	{% for item in site.data.navigation.publications-quicklinks %}
<a class="btn btn-outline" href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endfor %}--></div>

## Submitted for Publication / Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})

{% bibliography --query @*[keywords~=pre] %}

## Accepted for Publication / Publications in Print ({% bibliography_count --query @*[keywords~=accepted] %})

{% bibliography --query @*[keywords~=accepted] %}

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

## Contributions to Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

## Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})

{% bibliography --query @*[keywords=miszelle] %}

## Reviews ({% bibliography_count --query @review[keywords!=pre] %})

{% bibliography --query @review[keywords!=pre] %}

## Presentations
Invited talks, talks at conferences and workshops, comments as discussant, podium contributions, and public job talks (translation of German titles is work in progress).
{% capture presentations %}{% include cv/presentations.en.md %}{% endcapture %}
{{ presentations | markdownify }}