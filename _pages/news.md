---
layout: default
title: News
long_title: WASP NLP Cluster News
permalink: /news/
description: >
  Keep up with the latest news and announcements from the WASP NLP Cluster, including key updates, events, and our community’s achievements. 
nav: true
nav_order: 1
---

<section class="jumbotron text-center unshadow bg-light">
  <div class="container">
    <h1 class="display-4">{{ page.long_title }}</h1>
    <p class="lead text-muted">{{ page.description }}</p>
  </div>
</section>

{% include news.liquid %}
