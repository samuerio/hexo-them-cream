{% macro render(post,is_index) %}
    <article class="post" itemscope itemtype="http://schema.org/Article" >
        <header class="post-header" >
            {% if is_index %}
                <time datetime="{{ post.date.toDate().toISOString() }}">
                    <a href="{{ url_for(post.path) }}">{{ post.date.format(config.date_format) }}</a>
                </time>
            {% endif %}
            <h1 class="post-title" {% if is_index %}style="margin-bottom:20px;"{% endif %} itemprop="name headline" >
                <a class="post-title-link" href="{{ url_for(post.path) }}"  itemprop="url" >
                    {{ post.title | default(__('post.untitled')) }}
                </a>
            </h1>
            {% if not is_index %}
                <div class="post-meta">
                    <a href = "/" class="post-meta-avatar">
                        <img src="{{url_for('favicon.ico')}}" alt="{{config.author}}" >
                        <span>{{config.author}}</span>
                    </a>
                    <span class="post-meta-time" >{{ post.date.format(config.date_format) }}</time>
                </div>
            {% endif %}
        </header>
        <div class="post-body" itemprop="articleBody">
            {% if is_index %}
                {% if post.excerpt %}
                     {{ post.excerpt }}
                     <div style="text-align:center;">
                            <a  href="{{ url_for(post.path) }}" >
                              {{ __('post.read_more') }} &raquo;
                            </a>
                      </div>
                {% endif %}
            {% else %}
                {{ post.content }}
            {% endif %}
        </div>
    </article>
{% endmacro %}