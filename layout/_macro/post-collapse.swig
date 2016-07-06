{% macro render(post) %}
    <article class="collapse-post" itemscope itemtype="http://schema.org/Article">
        <header class="collapse-post-header">
            <h1 class="collapse-post-title">
                <a  href="{{ url_for(post.path) }}" itemprop="url">
                    {% if post.type === 'picture' %}
                        {{ post.content }}
                    {% else %}
                        <span itemprop="name">{{ post.title or 'post.untitled' }}</span>
                    {% endif %}
                </a>
            </h1>

            <div class="collapse-post-meta">
                <time  itemprop="dateCreated"
                      datetime="{{ moment(post.date).format() }}"
                      content="{{ date(post.date, config.date_format) }}" >
                    {{ date(post.date, 'MM-DD') }}
                </time>
            </div>
        </header>
    </article>
{% endmacro %}