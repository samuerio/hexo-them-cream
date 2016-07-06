{% if site.categories.length %}
    <div class='categorieslist'>
        <p class='asidetitle'>{{ __('categories') }}</p>
        <ul>
            {% for category in site.categories.sort('name') %}
                {% if category.posts.length  %}
                    <li><a href="{{url_for(category.path)}}" title="{{category.name}}">{{category.name}}<sup>{{ category.posts.length }}</sup></a></li>
                {% endif %}
            {% endfor %}
        </ul>

    </div>
{% endif %}
