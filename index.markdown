---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
title: Home
layout: home
nav_order: 1
---
<span class="text-blue-200">PD Dr. Stefan Groth</span> -- I am Senior Research Fellow at the <a class="about-links" href="https://www.gcr21.org"><span style="display: inline-block;"><i class="fas fa-arrow-right fa-xs text-grey-lt-300 pr-2"></i>Centre</span> for Global Cooperation Research</a> and Privatdozent at the <a class="about-links" href="https://www.isek.uzh.ch/de/populärekulturen.html"><span style="display: inline-block;"><i class="fas fa-arrow-right fa-xs text-grey-lt-300 pr-2"></i>Department</span> of Social Anthropology and Cultural Studies</a>, Zurich University. Currently, I am mainly working on <a class="about-links" href="{{ site.url }}/projects/political_narratives/"><span style="display: inline-block;"><i class="fas fa-arrow-right fa-xs text-grey-lt-300 pr-2"></i>political</span> narratives</a> and on the <a class="about-links" href="{{ site.url }}/projects/eu-margins/"><span style="display: inline-block;"><i class="fas fa-arrow-right fa-xs text-grey-lt-300 pr-2"></i>production</span> of Europe in everyday contexts within and outside of Europe</a>. 
{: .fs-6 .fw-400 .mb-8 .lh-default}

---
### Current Projects
{: .text-blue-200 }

<ul class="fa-ul aktuelle-projekte">
{% assign sorted = site.projects | sort: 'recent_order' %}
{% for projekt in sorted %}
{% if projekt.is_recent == true %}
  <li><span class="fa-li"><i class="fas fa-arrow-right fa-sm"></i></span><a href="{{ site.url }}{{ projekt.url }}">{{ projekt.title }}</a>{% if projekt.projekt_details %}: {{ projekt.projekt_details }}{% endif %} {% if projekt.projekt_annote %} ({{ projekt.projekt_annote }}){% endif %}</li>
  {% endif %}
{% endfor %}
</ul>

---
### News
{: .text-red-200 }
<ul class="fa-ul aktuelles">
<li><span class="fa-li"><i class="fas fa-arrow-right fa-sm"></i></span>29.09.2021 &#8212; Senior Fellow at the Centre for Global Cooperation Research<br/>Starting November 2021, I am Senior Fellow at the Centre for Global Cooperation Research. I will be working on a project on “Everyday Narratives of (De-)Legitimation: How Stories about Migration Policies and Expert Regimes are told in Everyday Contexts.”</li>
</ul>

---

<!--Meine Habilitation habe ich über "Mittelmaß als Praxis und Konstellation: Orientierungen am Mittelmaß aus empirisch-kulturwissenschaftlicher Perspektive" verfasst, 2021 erfolgte die Ernennung zum Privatdozenten an der Philosophischen Fakultät der Universität Zürich. Ich habe in Göttingen und Udine Soziologie, Kulturanthropologie / Europäische Ethnologie und Wirtschaft- und Sozialpsychologie studiert. Geforscht und gelehrt habe ich in Göttingen als Teil einer interdisziplinären Forschergruppe zu kulturellem Eigentum, als Fellow am Käte Hamburger Kolleg / Centre for Global Cooperation Research und als Postdoc an der Universität Bonn.
{: .fs-5 .mt-8}

Zu meinen Forschungsschwerpunkten gehören politische Anthropologie und Europäisierungsforschung; Narratologie, linguistische Anthropologie und Kommunikationsethnografie; Organisationsforschung; Methoden der Empirischen Kulturwissenschaft; Kulturwissenschaftliche Sportforschung; Kulturerbe und kulturelles Eigentum. Mein erstes Buch “Negotiating Tradition: The Pragmatics of International Deliberations on Cultural Property” ist 2012 erschienen und als Open-Access-Version verfügbar. Zu meinen aktuellen Herausgeberschaften zählen die Sammelbände "Vernetzt, entgrenzt, prekär? Kulturwissenschaftliche Perspektiven auf Arbeit im Wandel" (2020, mit Sarah May und Johannes Müske), "Zusammen arbeiten. Praktiken der Koordination und Kooperation in kollaborativen Prozessen" (2019, mit Christian Ritter), "Ordnungen in Alltag und Gesellschaft: Empirisch-kulturwissenschaftliche Perspektiven" (2019, mit Linda M. Mülli) sowie die Special Issues zu "Political Narratives" (Narrative Culture 6/1, 2019) und "Comparison as Social and Cultural Practice" (Cultural Analysis 18/1, 2020).
{: .fs-5}-->


