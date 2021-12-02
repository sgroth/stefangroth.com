---
layout: cv
title: Publications
permalink: /publications/
nav_order: 3
---
<h1>Publications</h1>
<div class="fs-3 mb-5 mt-5">
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Submitted for Publication ({% bibliography_count --query @*[keywords~=pre] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Monographs ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Edited Volumes ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Special Issues ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Journal Articles ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Articles in Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Reviews ({% bibliography_count --query @review[keywords!=pre] %})</a> 
<a class="btn btn-outline" href="{{ item.url | relative_url }}">Presentations (59)</a> 

<!--	{% for item in site.data.navigation.publications-quicklinks %}
<a class="btn btn-outline" href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endfor %}--></div>

### Submitted for Publication / Publications in Preparation ({% bibliography_count --query @*[keywords~=pre] %})

{% bibliography --query @*[keywords~=pre] %}

### Monographs ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})

{% bibliography --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}

### Edited Volumes ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})

{% bibliography --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}

### Special Issues ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})

{% bibliography --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}

### Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})

{% bibliography --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

### Journal Articles ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})

{% bibliography --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~inpreparation && keywords!~ miszelle && keywords!~submitted && keywords!~inprint && keywords!~pre ] %}

### Articles in Edited Volumes ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

### Miscellaneous ({% bibliography_count --query @*[keywords=miszelle] %})

{% bibliography --query @*[keywords=miszelle] %}

### Reviews ({% bibliography_count --query @review[keywords!=pre] %})

{% bibliography --query @review[keywords!=pre] %}

### Presentations
{% capture presentations %}{% include cv/presentations.md %}{% endcapture %}
{{ presentations | markdownify }}