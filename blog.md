---
title: My occasional blogposts
image: /assets/images/aaroncarson.jpg
---

{% assign psize = site.posts | size %}
{% if psize == 0 %} 
<div class="text-center lead">No posts yet. Check back soon!</div>
{% else %}
{% for post in site.posts %}
<div markdown="1">
### [{{ post.title }}]({{ post.url }})
###### {{ post.date | date_to_long_string }}
{{ post.excerpt | strip_html | strip_newlines | truncatewords: 50 }}
{% if forloop.last %}
{% else %}
<hr>
{% endif %}
</div>
{% endfor %}
{% endif %}
