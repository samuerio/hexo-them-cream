{% if post.categories and post.categories.length %}
    <div class='categories'>
        <% for category in post.categories %>
            <a href='{{url_for(category.path)}}' >{{category.name}}</a>
        <% endfor %>
    </div>
{% endif %}
