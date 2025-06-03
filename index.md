---
layout: post
title: "About"
---

<meta http-equiv="refresh" content="0; url=/leon" />

{% assign posts = site.posts | where: "title", "About" %}

{% for post in posts %}
{{ post.content }}
{% endfor %}
