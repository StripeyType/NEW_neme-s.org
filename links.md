---
title: Links
permalink: /links/
layout: default
---
## Some of NEMES favorite links

{% assign headings = site.data.links | map: 'type' | uniq %}
{% for heading in headings %}
#### {{ heading }}
  {% for link in site.data.links | where: 'type',heading %}
 + [{{ link.name }}]({{ link.link }})
  {% endfor %}
{% endfor %}
