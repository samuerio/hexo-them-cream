{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{config.title}}{% endblock %}
{% block page_class %}index{% endblock %}

{% block content %}
    {% for post in page.posts %}
        {{ post_template.render(post,true) }}
    {% endfor %}
    {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
 {{sidebar_template.render(false)}}
{% endblock %}

