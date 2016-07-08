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