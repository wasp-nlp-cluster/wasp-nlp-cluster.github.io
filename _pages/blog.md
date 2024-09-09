---
layout: default
permalink: /blog/
title: Blog
nav: true
nav_order: 4
pagination:
  enabled: true
  collection: posts
  permalink: /blog/page/:num/
  per_page: 5
  sort_field: date
  sort_reverse: true
  trail:
    before: 1
    after: 3
---

<section class="jumbotron text-center bg-light">
  <div class="container">
    <h1 class="display-4">{{ site.blog_name }}</h1>
    <p class="lead">{{ site.blog_description }}</p>
  </div>
</section>

<div class="container">
  <!-- Featured Posts -->
  {% assign featured_posts = site.posts | where: "featured", "true" %}
  {% if featured_posts.size > 0 %}
    <section class="mb-5">
      <h2 class="mb-4">Featured Posts</h2>
      <div class="row">
        {% for post in featured_posts %}
          {% if post.external_source == blank %}
            {% assign read_time = post.content | number_of_words | divided_by: 180 | plus: 1 %}
          {% else %}
            {% assign read_time = post.feed_content | strip_html | number_of_words | divided_by: 180 | plus: 1 %}
          {% endif %}
          <div class="col-md-6 mb-4">
            <div class="card shadow-sm">
              <a href="{{ post.url | relative_url }}" class="text-decoration-none">
                {% if post.thumbnail %}
                  <img src="{{ post.thumbnail | relative_url }}" class="card-img-top" alt="{{ post.title }}" style="object-fit: cover; height: 200px;">
                {% else %}
                  <div class="card-img-top d-flex align-items-center justify-content-center" style="height: 200px; background-color: #f0f0f0;">
                    <i class="fas fa-newspaper fa-3x text-muted"></i>
                  </div>
                {% endif %}
              </a>
              <div class="card-body">
                <h5 class="card-title">
                  <a href="{{ post.url | relative_url }}" class="text-dark">{{ post.title }}</a>
                </h5>
                <p class="card-text text-muted">{{ post.description }}</p>
                <small class="text-muted">
                  <i class="fas fa-calendar"></i> {{ post.date | date: '%B %d, %Y' }} &middot; {{ read_time }} min read
                </small>
              </div>
            </div>
          </div>
        {% endfor %}
      </div>
    </section>
  {% endif %}

  <!-- Blog Posts -->
  <section>
    {% if page.pagination.enabled %}
      {% assign postlist = paginator.posts %}
    {% else %}
      {% assign postlist = site.posts %}
    {% endif %}
    {% if postlist.size == 0 %}
      <div class="alert alert-info text-center">No posts at this time.</div>
    {% else %}
      <h2 class="mb-4">All Posts</h2>
      <div class="row">
        

        {% for post in postlist %}
          {% if post.external_source == blank %}
            {% assign read_time = post.content | number_of_words | divided_by: 180 | plus: 1 %}
          {% else %}
            {% assign read_time = post.feed_content | strip_html | number_of_words | divided_by: 180 | plus: 1 %}
          {% endif %}

          <div class="col-md-6 mb-4">
            <div class="card shadow-sm h-100">
              <a href="{% if post.redirect == blank %}{{ post.url | relative_url }}{% else %}{{ post.redirect }}{% endif %}" class="text-decoration-none">
                {% if post.thumbnail %}
                  <img src="{{ post.thumbnail | relative_url }}" class="card-img-top" alt="{{ post.title }}" style="object-fit: cover; height: 200px;">
                {% else %}
                  <div class="card-img-top d-flex align-items-center justify-content-center" style="height: 200px; background-color: #f0f0f0;">
                    <i class="fas fa-newspaper fa-3x text-muted"></i>
                  </div>
                {% endif %}
              </a>
              <div class="card-body d-flex flex-column">
                <h5 class="card-title">
                  <a href="{% if post.redirect == blank %}{{ post.url | relative_url }}{% else %}{{ post.redirect }}{% endif %}" class="text-dark">{{ post.title }}</a>
                </h5>
                <p class="card-text flex-grow-1">{{ post.description }}</p>
                <small class="text-muted mt-auto">
                  <i class="fas fa-calendar"></i> {{ post.date | date: '%B %d, %Y' }} &middot; {{ read_time }} min read
                </small>
              </div>
            </div>
          </div>
        {% endfor %}
      </div>
    {% endif %}
  </section>

  <!-- Pagination -->
  {% if page.pagination.enabled %}
    {% include pagination.liquid %}
  {% endif %}
</div>
