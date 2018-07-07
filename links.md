---
title: Links
permalink: /links/
layout: default
---
## Some of NEMES favorite links

{% assign headings = site.data.links | map: 'type' | uniq %}
{{ headings }}
{% for heading in headings %}
#### {{ heading }}
  {% for link in site.data.links %}
    {% if link.type == heading %}
      {% if link.desc %}
 + [{{ link.name }}]({{ link.link }}) - {{ link.desc }}
      {% else %}
 + [{{ link.name }}]({{ link.link }})
      {% endif %}
    {% endif %}
  {% endfor %}
{% endfor %}
