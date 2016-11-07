{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}


{% block title %} {{ page.title }} | {{ config.title }} {% endblock %}
{% block page_class %}post{% endblock %}


{% block content %}

    {{ post_template.render(page) }}

{% endblock %}



{% block sidebar %}
 {{sidebar_template.render(true)}}
{% endblock %}