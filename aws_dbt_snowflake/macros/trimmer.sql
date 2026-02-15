
{% macro trimmer(col_name,nano) %}
  {{ col_name | trim | upper }}
{% endmacro %} 