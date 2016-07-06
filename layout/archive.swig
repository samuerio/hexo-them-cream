{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template %}
{% import '_macro/post-collapse.swig' as post_template %}

{% set title='' %}
{% if page.category %}
    {% set title = page.category %}
{% elseif page.tag %}
    {% set title = page.tag %}
{% elseif page.archive %}
    {% if page.year %}
        {% set title = page.year + (page.month ? '/' + page.month : '') %}
    {% else %}
        {% set title = __('archive_a') %}
    {% endif %}
{% endif %}

{% block title %}{{ title }}{% endblock %}

{% block content %}

     <section  class="collapse">
        <span class="archive-move-on"></span>
        <span class="archive-page-counter">
          {% set posts_length = site.posts.length %}

          {% if posts_length > 210 %}
            {% set cheers = 'excellent' %}
          {% elseif posts_length > 130 %}
            {% set cheers = 'great' %}
          {% elseif posts_length > 80 %}
            {% set cheers = 'good' %}
          {% elseif posts_length > 50 %}
            {% set cheers = 'nice' %}
          {% elseif posts_length > 30 %}
            {% set cheers = 'ok' %}
          {% else %}
            {% set cheers = 'um' %}
          {% endif %}
          {{ __('cheers.' + cheers) }}{{ _p("counter.archive_posts", site.posts.length) }}{{ __('keep_on') }}
        </span>
        {% set year = '' %}
        {% for post in page.posts %}
            {# show year #}
            {% set post.year = date(post.date,'YYYY') %}
            {% if year != post.year %}
                {% set year = post.year %}
                <div class="collapse-title">
                      <h2 class="archive-year motion-element" id="archive-year-{{ year }}">{{ year }}</h2>
                </div>
            {% endif %}
            {# end show #}
            {{ post_template.render(post) }}
        {% endfor %}
    </section>
    {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
    {{ sidebar_template.render(false) }}
{% endblock %}
