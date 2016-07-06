<nav class='pagination'>
    {% if page.prev %}
        <a href = '{{url_for(page.prev_link)}}' class='alignleft prev'>{{__('prev')}}</a>
    {% endif %}
    {% if page.next %}
            <a href = '{{url_for(page.next_link)}}' class='alignright next'>{{__('next')}}</a>
    {% endif %}
    <div class='clearfix'></div>
</nav>