---
layout: post
title: "About"
hide_date: true
---

<meta http-equiv="refresh" content="0; url=/leon" />

{% assign posts = site.posts | where: "slug", "leon" %}

{% for post in posts %}
{{ post.content }}
{% endfor %}
