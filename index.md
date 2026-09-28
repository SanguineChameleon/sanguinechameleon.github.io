---
layout: post
title: "About"
hide_date: true
---

<meta http-equiv="refresh" content="0; url=/leon" />

{% assign about = site.pages | where: "slug", "leon" | first %}

{{ about.content }}
