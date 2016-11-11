{% macro render(is_post) %}
    <aside class="sidebar">
        <div class="sidebar-inner">
                {% if !is_post %}
                    {% set siteinfoclass = 'active' %}
                {% endif %}
                {% set toc = toc(page.content, { "class": "nav-menu", list_number:false  }) %}
                {% if is_post %}
                <ul class='sidebar-nav' >
                    <li class='active' href="#post-toc"  data-toggle="tab" >文章目录</li>
                    &nbsp&nbsp
                    <li href="#site-info" data-toggle="tab" >站点概况</li>
                </ul>
                {% endif %}
                <div class='sidebar-nav-content'>
                    {% if is_post %}
                    <div class='nav-panel post-toc active' id='post-toc'>
                        <div class='highlight-title' style='display:none;' ></div>
                        {{toc}}
                    </div>
                    {% endif %}
                    <div class='nav-panel {{siteinfoclass}} ' id='site-info' >
                        <div class='author'>
                            {#<a id='btnCloseSideBar'  class='icon icon-collapse' href='#' title='存档' ></a>#}
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
                    </div>
                </div>
        </div>
    </aside>
{% endmacro %}