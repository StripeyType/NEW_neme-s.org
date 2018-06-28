---
title: the NEMES Gazette
permalink: /gazette/
layout: default
---
{% assign gazette_issues = site.data.gazette %}


{% for issue in gazette_issues %}
 + [NEMES Gazette Issue {{ issue.issue }} for {{ issue.month }}]({{ issue.file | relative_url }})
{% endfor %}
