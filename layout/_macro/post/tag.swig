<% if post.tags and post.tags.length %>
    <div class='tags'>
        <% for tag in post.tags %>
            <a href='{{ url_for(tag.path) }}'>{{tag.name}}</a>
        <% endfor %>
    </div>
<% endif %>