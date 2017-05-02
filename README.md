# jekyll-plugins
A collection of useful Jekyll plugins


### liquify

[See filter >>](plugins/liquify.rb)

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
[See filter >>](plugins/debug.rb)

This is a debugging filter that can be used to inspect underlying data. Make sure that you have the `pry` and `rb-readline` gems installed before you use this plugin. You will also need to restart your server after testing the filter.

Use in a few ways:
```
{{ data | debug }}

{% assign new_data = data | debug %}
```

### shuffle
[See filter >>](plugins/shuffle.rb)

This filter takes an array, randomly shuffles it, and returns the shuffled array. 

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
