---
layout: publikationen
title: Publications
permalink: /publications/
---
<h1 class="add-sg">{{ page.title }}</h1>

<p class="title is-5 has-text-link" id="beiträge-in-vorbereitung">Submitted Publications/Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})</p>

{% bibliography --query @*[keywords~=pre] %}

<!--<p class="title is-5 has-text-link m-t-2" id="angenommene-beiträge">Zur Publikation angenommene Beiträge und Beiträge im Druck ({% bibliography_count --query @*[keywords~=inprint] %})</p>

{% bibliography --query @*[keywords~=inprint] %}-->

<p class="title is-5 has-text-link m-t-2" id="monographien">Monographies ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})</p>

{% bibliography --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}

<p class="title is-5 has-text-link m-t-2" id="herausgeberschaften">Edited Volumes ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})</p>

{% bibliography --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}

<p class="title is-5 has-text-link m-t-2" id="sondernummern-von-zeitschriften">Special Issues ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})</p>

{% bibliography --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}

<p class="title is-5 has-text-link m-t-2" id="peer-reviewed-papers">Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</p>

{% bibliography --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

<p class="title is-5 has-text-link m-t-2" id="zeitschriftenaufsätze">Journal Articles ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</p>

{% bibliography --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~inpreparation && keywords!~ miszelle && keywords!~submitted && keywords!~inprint && keywords!~pre ] %}

<p class="title is-5 has-text-link m-t-2" id="aufsätze-in-sammelbänden">Articles in Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})</p>

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

<p class="title is-5 has-text-link m-t-2" id="miszellen-und-graue-literatur">Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})</p>

{% bibliography --query @*[keywords=miszelle] %}

<p class="title is-5 has-text-link m-t-2" id="rezensionen">Reviews ({% bibliography_count --query @review[keywords!=dev && keywords!~inprint] %})</p>

{% bibliography --query @review[keywords!=dev && keywords!~inprint] %}

<p class="title is-4 has-text-link m-t-2" id="vorträge">Presentations</p>
{% capture presentations %}{% include cv/presentations.md %}{% endcapture %}
{{ presentations | markdownify }}