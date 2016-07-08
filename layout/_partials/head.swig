<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>


{% include "./head/external-fonts.swig" %}

{% set font_awesome_uri = url_for('/vendors/font-awesome/css/font-awesome.min.css?v=4.4.0') %}
{% if theme.vendors.fontawesome %}
  {% set font_awesome_uri = theme.vendors.fontawesome %}
{% endif %}
<link href="{{ font_awesome_uri }}" rel="stylesheet"  />

<link href="{{ url_for('/css/main.css') }}" rel="stylesheet"  />

{% if theme.favicon %}
  <link rel="shortcut icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}" />
{% endif %}