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
        {% include 'sidebar/category.swig' %}
        {% include 'sidebar/tag.swig' %}
    </div>
</aside>