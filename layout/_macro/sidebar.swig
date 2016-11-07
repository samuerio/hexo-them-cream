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
            {% include '../_partials/sidebar/category.swig' %}
            {% include '../_partials/sidebar/tag.swig' %}
            {% if is_post %}
                {% set toc = toc(page.content, { "class": "nav", list_number:false  }) %}
                <div class='horizontal-line'></div>
                <div class='post-nav'>
                    <div class='post-nav-inner'>
                        <div class='post-nav-heading'>文章目录</div>
                        <div class='post-nav-body'>
                            <div class='highlight-title'></div>
                            {{toc}}
                        </div>
                    </div>
                </div>
            {% endif %}
        </div>
    </aside>
{% endmacro %}