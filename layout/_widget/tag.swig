{% if site.tags.length %}
    <div class='tagslist' >
        <p class='asidetitle'>{{__('tags')}}</p>
        <ul class='clearfix' >
            {% for tag in site.tags.sort('posts.length','desc').limit(20) %}
                {% if tag.posts.length %}
                    <li><a href='{{url_for(tag.path)}}' title={{tag.name}}><sup>{{tag.name}}</sup></a></li>
                {% endif %}
            {% endfor %}
        </ul>
    </div>
{% endif %}
