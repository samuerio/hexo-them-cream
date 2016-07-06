<div class='alignleft' >
    <h1>
        <a href = '/'>{{config.title}}</a>
    </h1>
</div>
<nav class='alignright'>
    <ul>
        {% for name, path in theme.menu %}
            <li><a href='{{url_for(path)}}'>{{name}}</a></li>
        {% endfor %}
    </ul>
</nav>
<div class='clearfix'><div>