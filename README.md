# jekyll-plugins
A collection of useful Jekyll plugins


### liquify

This is a really useful filter. It will parse liquid syntax after the initial render cycle. This is particularly useful if you want to use liquid syntax in front matter. For example, you have a file, landing.md:

```
# _config.yml

year: 2017
```

```
# landing.md

---
title: landing
layout: landing
description: "I want to make this dynamic and inherit the {{ site.year }} from the 'landing' layout"
---

<h1>{{ page.title }}</h1>
<p>{{ page.description | liquify }}</p>
```

### debug


### shuffle

This filter takes an array, randomly shuffles it, and returns the shuffled array

```
{% assign array = "1,2,3,4" | split:"," %}
{% assign shuffled_array = array | shuffle %}

{{ array }} 
>> 1234
{{ shuffled_array }}
>> 1342
{{ shuffled_array }}
>> 2341
```
