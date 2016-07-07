{% macro render(is_post) %}
    <aside class="sidebar">
        <div class="sidebar-inner">
            <div class='author'>
                <a id='btnCloseSideBar'  class='icon icon-collapse' href='#' title='存档' ></a>
                <div class='author-img'></div>
                <div class='author-socialInfo'>
                {% if theme.author.github %}
                    <a href="https://github.com/{{ theme.author.github }}" target="_blank" class="icon icon-github" title="github"></a>
                {% endif %}
                {% if theme.author.email %}
                    <a href="mailto:{{ theme.author.email }}" target="_blank" class="icon icon-email" title="Email Me"></a>
                {% endif %}
                </div>
            </div>
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
            {% if site.tags.length %}
                <div class="tagslist" >
                    <p class="tagslist-title">{{__('tags')}}</p>
                    <ul>
                        {% set tags = site.tags.sort('posts.length','desc') %}
                        {% for tag in tags %}
                            {% if tag.posts.length %}
                                <li class="tagslist-item">
                                    <a  href='{{url_for(tag.path)}}' title={{tag.name}}>{{tag.name}}</a>
                                </li>
                            {% endif %}
                        {% endfor %}
                    </ul>
                 </div>
            {% endif %}
        </div>
    </aside>
{% endmacro %}