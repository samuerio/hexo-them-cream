<!doctype html>
<html>
    <head>
        {% include '_partials/head.swig' %}
        <title>{% block title %}{% endblock %}</title>
    </head>
    <body lang='{{ config.language }}' >
        <div class='container' >
            {% include '_partials/navbar.swig' %}
            <main id='main' class='main'>
                <div class='main-inner'>
                    <div class='content-wrap content-wrap-{% block page_class %}normal{% endblock %} '>
                        <a id='btnOpenSideBar' class='icon icon-spread' href='#'  ></a>
                        <div id='content' class='content'>
                            {% block content %}{% endblock %}
                        </div>
                        {% include '_partials/comments.swig' %}

                    </div>
                    {% include '_partials/sidebar.swig' %}
                </div>
            </main>
        </div>
        {# 引入相关脚本 #}
        {% include '_scripts/third-party/duoshuo.swig' %}
        {% include '_scripts/collapseSidebar.swig' %}
    </body>
</html>