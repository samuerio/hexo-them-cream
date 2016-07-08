{% if site.categories.length %}
    <div class='categorieslist'>
        <p class='categorieslist-title'>{{ __('categories') }}</p>
        <ul>
            {% for category in site.categories.sort('name') %}
                {% if category.posts.length  %}
                    <li class="categorieslist-item">
                        <a  href="{{url_for(category.path)}}" title="{{category.name}}">{{category.name}}</a>
                    </li>
                {% endif %}
            {% endfor %}
        </ul>
    </div>
{% endif %}