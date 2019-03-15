---
layout: start
title: "Startseite"
author: Stefan Groth
date: 2018-05-20 10:00:00 +0100
pagination: 
  enabled: true
---

<div class="container is-widescreen main">
<div class="columns">
<div class="column is-12 b-t-1-dotted m-t-2 m-b-2"></div>
</div>
<div class="columns">
<div class="column content">

{% for post in paginator.posts %}
<div class="columns">
<div class="column is-3 is-hidden-touch"> </div>
<div class="column is-9 is-full-touch is-full-tablet">
<span class="is-size-7 has-text-grey">{% assign m = post.date | date: "%-m" %}
{{ post.date | date: "%-d." }}
{% case m %}
  {% when '1' %}Januar
  {% when '2' %}Februar
  {% when '3' %}März
  {% when '4' %}April
  {% when '5' %}Mai
  {% when '6' %}Juni
  {% when '7' %}Juli
  {% when '8' %}August
  {% when '9' %}September
  {% when '10' %}Oktober
  {% when '11' %}November
  {% when '12' %}Dezember
{% endcase %}
{{ post.date | date: "%Y" }}</span>
      <p class="title is-3"><a href="{{ post.url }}">{{ post.title }}</a></p>
      <p class="subtitle is-5">{{ post.subtitle }}</p>
</div>
</div>

<div class="columns">
<div class="column is-3 is-hidden-touch ">

{% for tag in post.tags %}
<span class="tag is-link">
<span class="icon"><i class="fas fa-tag fa-sm"></i></span>{{ tag }}</span><br />{% endfor %}

{% for item in post.links %}
{% if forloop.first == true %}
<a class="tag is-primary m-t-1" href="{{ item.url }}">
<span class="icon"><i class="fas fa-link fa-sm"></i></span>{{ item.title }}</a>
{% else %}
<a class="tag is-primary" href="{{ item.url }}">
<span class="icon"><i class="fas fa-link fa-sm"></i></span>{{ item.title }}</a>
{% endif %}
{% endfor %}

</div>
<div class="column is-9 is-full-touch is-full-tablet content">

<div class="tags is-hidden-desktop">
{% for tag in post.tags %}
  <span class="tag is-link">
 <span class="icon"><i class="fas fa-tag fa-sm"></i></span>{{ tag }}</span>{% endfor %}
 {% for item in post.links %}
 <span class="tag is-primary">
<span class="icon"><i class="fas fa-link fa-sm"></i></span><a class="taglinks" href="{{ item.url }}">{{ item.title }}</a></span>
{% endfor %}
</div>


{{ post.content }}


</div>

</div>
<div class="columns" style="">

<div class="column is-12 b-t-1-dotted m-t-2">

</div>
</div>
{% endfor %}
</div>

<div class="column is-1">

</div>

<div class="column is-3 is-size-7 is-hidden-mobile">
{% include currentpubs.html %}
<!--
<hr/>
   <p class="title is-6 has-text-danger">Bücher</p>
      
      <article class="media">
        <figure class="media-left">
          <p class="image" style="width: 128px">
            <img src="/assets/img/ordnungen-book.png">
          </p>
        </figure>
        <div class="media-content">
          <div class="content">
            <p class="is-size-7">
              <strong class="is-uppercase">John Smith</strong> <small>@johnsmith</small> <small>31m</small>
              <br>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis.
            </p>
          </div>
        </div>
      </article>
      <article class="media" >
        <figure class="media-left">
          <p class="image is-128x128" style="height:100%">
            <img src="/assets/img/ordnungen-book.png">
          </p>
        </figure>
        <div class="media-content">
          <div class="content">
            <p class="is-size-7">
              <strong class="is-uppercase">John Smith</strong> <small>@johnsmith</small> <small>31m</small>
              <br>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis.
            </p>
          </div>
        </div>
      </article>-->
</div>
</div>
</div>


