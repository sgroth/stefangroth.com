---
layout: publikationen
title: Publikationen
permalink: /publikationen/
---
<h1 class="add-sg">{{ page.title }}</h1>


<div class="tabs">
  <ul>
    <li class="tablinks" onclick="openContent(event, 'category')" id="defaultOpen"><a>Nach Kategorie</a></li>
    <li class="tablinks" onclick="openContent(event, 'year')"><a>Nach Jahr</a></li>
  </ul>
</div>


<div id="category" class="tabcontent">
<div class="buttons m-b-2">{% for item in site.data.navigation.publikationen-quicklinks %}
<a class="button is-light is-small" href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endfor %}</div>
<p class="title is-5 has-text-link" id="beiträge-in-vorbereitung">Eingereichte Beiträge und Beiträge in Arbeit ({% bibliography_count --query @*[keywords~=pre] %})</p>

{% bibliography --query @*[keywords~=pre] %}

<!--<p class="title is-5 has-text-link m-t-2" id="angenommene-beiträge">Zur Publikation angenommene Beiträge und Beiträge im Druck ({% bibliography_count --query @*[keywords~=inprint] %})</p>

{% bibliography --query @*[keywords~=inprint] %}-->

<p class="title is-5 has-text-link m-t-2" id="monographien">Monografien ({% bibliography_count --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %})</p>

{% bibliography --query @book[keywords!=notaccepted  && keywords!=miszelle &&  keywords!=inpreparation && keywords=monography && keywords!~inprint] %}

<p class="title is-5 has-text-link m-t-2" id="herausgeberschaften">Herausgeberschaften ({% bibliography_count --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %})</p>

{% bibliography --query @*[keywords ^= editedvolume && keywords !~ notaccepted && keywords!~inpreparation && keywords!~submitted && keywords!~inprint] %}

<p class="title is-5 has-text-link m-t-2" id="sondernummern-von-zeitschriften">Sonderausgaben von Zeitschriften ({% bibliography_count --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %})</p>

{% bibliography --query @periodical[keywords!~pre && keywords!~submitted && keywords!~inprint] %}

<p class="title is-5 has-text-link m-t-2" id="peer-reviewed-papers">Peer Reviewed Papers ({% bibliography_count --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</p>

{% bibliography --query @article[keywords!~ notaccepted && keywords^=peerreview && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

<p class="title is-5 has-text-link m-t-2" id="zeitschriftenaufsätze">Zeitschriftenaufsätze ({% bibliography_count --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~ miszelle && keywords!~inpreparation && keywords!~submitted && keywords!~inprint && keywords!~pre ] %})</p>

{% bibliography --query @article[ keywords!~ peerreview && keywords!~ notaccepted && keywords!~inpreparation && keywords!~ miszelle && keywords!~submitted && keywords!~inprint && keywords!~pre ] %}

<p class="title is-5 has-text-link m-t-2" id="aufsätze-in-sammelbänden">Aufsätze in Sammelbänden ({% bibliography_count --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %})</p>

{% bibliography --query @incollection[keywords!~ inpreparation && keywords!=miszelle && keywords!=notaccepted && keywords!~submitted && keywords!~inprint && keywords!~pre] %}

<p class="title is-5 has-text-link m-t-2" id="miszellen-und-graue-literatur">Miszellen und graue Literatur ({% bibliography_count --query @*[keywords=miszelle] %})</p>

{% bibliography --query @*[keywords=miszelle] %}

<p class="title is-5 has-text-link m-t-2" id="rezensionen">Rezensionen ({% bibliography_count --query @review[keywords!=dev && keywords!~inprint] %})</p>

{% bibliography --query @review[keywords!=dev && keywords!~inprint] %}

<p class="title is-4 has-text-link m-t-2" id="vorträge">Vorträge</p>
{% capture presentations %}{% include cv/presentations.md %}{% endcapture %}
{{ presentations | markdownify }}
</div>

<div id="year" class="tabcontent">

<div class="buttons m-b-2"><a class="button is-warning is-small" href="#2020">2020</a><a class="button is-warning is-small" href="#2019">2019</a><a class="button is-warning is-small" href="#2018">2018</a><a class="button is-warning is-small" href="#2017">2017</a><a class="button is-warning is-small" href="#2016">2016</a><a class="button is-warning is-small" href="#2015">2015</a><a class="button is-warning is-small" href="#2014">2014</a><a class="button is-warning is-small" href="#2013">2013</a><a class="button is-warning is-small" href="#2012">2012</a><a class="button is-warning is-small" href="#2011">2011</a><a class="button is-warning is-small" href="#2010">2010</a><button class="button is-warning is-small" onclick="jump('2009')">2009</button></div>

<p class="title is-5 has-text-link" id="2020">2020 ({% bibliography_count --query @*[year=2020] %})</p>

{% bibliography --query @*[year=2020] %}

<p class="title is-5 has-text-link" id="2019">2019 ({% bibliography_count --query @*[year=2019] %})</p>

{% bibliography --query @*[year=2019] %}

<p class="title is-5 has-text-link" id="2018">2018 ({% bibliography_count --query @*[year=2018] %})</p>

{% bibliography --query @*[year=2018] %}

<p class="title is-5 has-text-link" id="2017">2017 ({% bibliography_count --query @*[year=2017] %})</p>

{% bibliography --query @*[year=2017] %}

<p class="title is-5 has-text-link" id="2016">2016 ({% bibliography_count --query @*[year=2016] %})</p>

{% bibliography --query @*[year=2016] %}

<p class="title is-5 has-text-link" id="2015">2015 ({% bibliography_count --query @*[year=2015] %})</p>

{% bibliography --query @*[year=2015] %}

<p class="title is-5 has-text-link" id="2014">2014 ({% bibliography_count --query @*[year=2014] %})</p>

{% bibliography --query @*[year=2014] %}

<p class="title is-5 has-text-link" id="2013">2013 ({% bibliography_count --query @*[year=2013] %})</p>

{% bibliography --query @*[year=2013] %}

<p class="title is-5 has-text-link" id="2012">2012 ({% bibliography_count --query @*[year=2012] %})</p>

{% bibliography --query @*[year=2012] %}

<p class="title is-5 has-text-link" id="2011">2011 ({% bibliography_count --query @*[year=2011] %})</p>

{% bibliography --query @*[year=2011] %}

<p class="title is-5 has-text-link" id="2010">2010 ({% bibliography_count --query @*[year=2010] %})</p>

{% bibliography --query @*[year=2010] %}

<p class="title is-5 has-text-link" id="2009">2009 ({% bibliography_count --query @*[year=2009] %})</p>

{% bibliography --query @*[year=2009] %}
</div>

<script>
function openContent(evt, contentName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" is-active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(contentName).style.display = "block";
  evt.currentTarget.className += " is-active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function jump(h){
    var top = document.getElementById(h).offsetTop;
    window.scrollTo(0, top);
}

</script>
