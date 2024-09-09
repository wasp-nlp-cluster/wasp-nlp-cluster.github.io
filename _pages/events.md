---
layout: default
title: Events
long_title: WASP NLP Cluster Events
permalink: /events/
description: >
  Here, you will find all the information you need about our regular events, as well as guidelines on how to host your own event.
nav: true
nav_order: 2
display_categories: [Workshop, Regular Meeting, Reading Group, Conference, Study Trip]
---

<section class="jumbotron text-center unshadow bg-light">
  <div class="container">
    <h1 class="display-4">{{ page.long_title }}</h1>
    <p class="lead text-muted">{{ page.description }}</p>
  </div>
</section>

<div class="container">
  {% assign upcoming_events = site.data.upcoming_events | sort: 'start' %}
  {% assign previous_events = site.data.previous_events | sort: 'start' | reverse %}

  {% if upcoming_events.size == 0 %}
    <div class="alert alert-info text-center">No upcoming events scheduled at this time.</div>
  {% else %}
    <section class="upcoming-events mb-5">
      <h2 class="mb-4">Upcoming Events</h2>
      <div class="card-columns">
        {% for event in upcoming_events %}
          <div class="card mb-3 shadow-sm">
            {% if event.image %}
              <div class="text-center">
                <img src="{{ event.image | relative_url }}" alt="{{ event.title }}" class="img-fluid rounded-circle mb-3" style="width: 128px; height: 128px;">
              </div>
            {% endif %}
            <div class="card-body">
              <h5 class="card-title">
                <a href="{{ event.url | relative_url }}" class="text-decoration-none">{{ event.title }}</a>
              </h5>
              <p class="card-text">
                <span class="badge badge-primary">{{ event.category }}</span><br>
                <strong>Date:</strong> {{ event.start | date: "%B %d, %Y %H:%M %Z" }}<br>
                <strong>Host:</strong> {{ event.host }}<br>
                <strong>Location:</strong> {{ event.location_type }} - {{ event.location }}
              </p>
              <p class="card-text">{{ event.short_description }}</p>
            </div>
          </div>
        {% endfor %}
      </div>
    </section>
  {% endif %}

  {% if previous_events.size > 0 %}
    <section class="past-events mb-5">
      <h2 class="mb-4">Past Events</h2>
      <div style="max-height: 300px; overflow-y: auto;">
        <ul class="list-group">
          {% for event in previous_events %}
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <a href="{{ event.url | relative_url }}" class="text-decoration-none">
                <h6 class="mb-1">{{ event.title }}</h6>
                <small>
                  <span class="badge badge-secondary">{{ event.category }}</span>
                  {{ event.start | date: "%B %d, %Y %H:%M %Z" }}
                </small>
              </a>
            </li>
          {% endfor %}
        </ul>
      </div>
    </section>
  {% endif %}

  <!-- How to Host an Event Section -->
  <section id="how-to-host" class="my-5">
    <h2 class="mb-4">How to Host an Event</h2>
    <p>Hosting an event is a best way to share your research and connect with others in the cluster. Here’s how you can make it happen:</p>
    <ul>
      <li><strong>Choose a Date:</strong> Talk with other members to decide a date and time that is suitable for everyone.</li>
      <li><strong>Submit Your Event Details:</strong> Fill out the <a href="#">Event Hosting Form</a> with all the info about your event so we can spread the word.</li>
      <li><strong>Host the Event:</strong> On the day of the event, ensure you have all your materials ready and that the meeting platform (e.g., Zoom, Teams) is set up.</li>
    </ul>
  </section>

  <!-- Event Resources Section -->
  <section id="event-resources" class="my-5">
    <h2 class="mb-4">Event Resources</h2>
    <ul>
      <li><a href="#">Tools and Libraries</a></li>
      <li><a href="#">Presentation Templates</a></li>
    </ul>
  </section>
</div>
