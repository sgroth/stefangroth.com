---
layout: start
title: "Startseite"
author: Stefan Groth
date: 2018-05-20 10:00:00 +0100
pagination:
  enabled: true
---
<div class="container main">
  <div class="columns">
    <div class="column is-12 b-t-1-dotted m-t-2 m-b-2"></div>
  </div>
  <div class="columns">
    <div class="column content">
      {% for post in paginator.posts %}
        {% if post.snippet == true %}
      <div class="columns snippet">
          <div class="column is-3 is-hidden-touch"> </div>
          <div class="column is-9 is-full-touch is-full-tablet p-r-2">
          <div class=""><a href="{{ post.url }}" class="indent-left"><i class="fas fa-angle-right has-text-black hbb"></i></a><span class="is-size-6 has-text-weight-semibold has-text-black">{{ post.snippet-heading }} </span><span class="is-size-6 has-text-weight-normal has-text-grey-dark">&mdash; {% assign m = post.date | date: "%-m" %}
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
          {{ post.date | date: "%Y" }}</span></div>
          <span class="is-size-7">{{ post.content }}</span>
        </div>
      </div>
<div class="columns" style="">
                      <div class="column is-12 b-t-1-dotted">
                      </div>
                    </div>
{% else %}
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
          <p class="title is-3"><a href="{{ post.url }}" class="has-text-primary">{{ post.title }}</a></p>
          <p class="subtitle is-5">{{ post.subtitle }}</p>


        </div>
      </div>
      <div class="columns">
        <div class="column is-3 is-hidden-touch ">
<div class="is-size-7 has-text-black">Schlagwörter:<br /><span class="has-text-link">{% for tag in post.tags %}{% if forloop.last == true %}{{ tag }}{% else %}{{ tag }}<br />{% endif %}{% endfor %}</span></div>
{% if post.links %}<div class="is-size-7 has-text-black"><br />Links:<br />{% for item in post.links %}{% if forloop.last == true %}<a href="{{ item.url }}" class="has-text-primary">{{ item.title }}</a>{% else %}<a href="{{ item.url }}" class="has-text-primary">{{ item.title }}</a><br />{% endif %}{% endfor %}</div>{% endif %}

 <!--<p class="book" style="width: 128px">
                        <img src="/assets/img/ordnungen-book.png">
                      </p>-->

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
                        {% if post.excerpt_exist == true %}
{{ post.excerpt }} <div class="has-text-right"><a href="{{ post.url }}" class="has-text-primary has-text-weight-semibold">Weiterlesen ></a></div>

{% else %}

{{ post.content }}{% endif %}
                      </div>
                    </div>
                    <div class="columns" style="">
                      <div class="column is-12 b-t-1-dotted m-t-2">
                      </div>
                    </div>
                  {% endif %}
                  {% endfor %}
<!-- Pagination links -->
<nav class="pagination is-small is-centered" role="navigation" aria-label="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}" class="pagination-previous">Vorherige Seite</a>
  {% else %}
    <a class="pagination-previous" disabled>Vorherige Seite</a>
  {% endif %}
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}" class="pagination-next">Nächste Seite</a>
  {% else %}
    <a class="pagination-next" disabled>Nächste Seite</a>
  {% endif %}

  <ul class="pagination-list">
    {% if paginator.page_trail %} 
      {% for trail in paginator.page_trail %} 
        <li><a class="pagination-link {% if page.url == trail.path %}is-current{% endif %}" href="{{ trail.path }}" title="{{trail.title}}">{{ trail.num }}</a></li>
      {% endfor %}
    {% endif %}</ul>
  </nav>
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
