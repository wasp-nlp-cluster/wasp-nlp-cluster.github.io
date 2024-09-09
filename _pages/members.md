---
layout: default
title: Members
long_title: WASP NLP Cluster Members
permalink: /members/
description: >
  Meet the members of the WASP NLP Cluster, including our current members and alumni who have contributed to our research and development.
nav: true
nav_order: 3
---

<section class="jumbotron text-center unshadow bg-light">
  <div class="container">
    <h1 class="display-4">{{ page.long_title }}</h1>
    <p class="lead text-muted">{{ page.description }}</p>
  </div>
</section>

<div class="container">
  <h2 class="section-title text-center py-3">Current Members</h2>
  <div class="row">
    {% assign current_members = site.members | where: "state", "current" %}
    {% if current_members.size > 0 %}
      {% for member in current_members %}
        <div class="col-md-3 text-center mb-4">
          <img src="{% if member.image %}{{ member.image | relative_url }}{% else %}{{ 'assets/templates/profile.png' | relative_url }}{% endif %}" class="rounded-circle mb-2" alt="{{ member.fullname }}" style="width: 128px; height: 128px;">
          <h5><a href="{{ member.url | relative_url }}" class="member-name">{{ member.fullname }}</a></h5>
          <p class="text-muted">{{ member.position }} <br /> {{ member.affiliation }}</p>
          <p><small>{{ member.pronouns }}</small></p>
        </div>
      {% endfor %}
    {% else %}
      <p>No current members available at this time.</p>
    {% endif %}
  </div>
</div>

<div class="container mt-5">
  <h2 class="section-title text-center py-3">Alumni</h2>
  <div class="row">
    {% assign alumni_members = site.members | where: "state", "alumni" %}
    {% if alumni_members.size > 0 %}
      {% for member in alumni_members %}
        <div class="col-md-3 text-center mb-4">
          <img src="{{ member.image | relative_url }}" class="rounded-circle mb-2" alt="{{ member.fullname }}" style="width: 64px; height: 64px;">
          <h6><a href="{{ member.url | relative_url }}">{{ member.fullname }}</a></h6>
        </div>
      {% endfor %}
    {% else %}
      <p>No alumni members available at this time.</p>
    {% endif %}
  </div>
</div>
