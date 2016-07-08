{% if theme.font.enable %}

  {% set font_families = theme.font.families %}
  {% if font_families !== '' %}
    {% set font_host = font_config.host | default('//fonts.googleapis.com') %}
    <link href="{{ font_host }}/css?family={{ font_families }}" rel="stylesheet" type="text/css">
  {% endif %}

{% endif %}
