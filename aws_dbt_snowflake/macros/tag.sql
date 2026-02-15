
{% macro tag(col_name) %}
    case
        when {{ col_name }} is null then 'Unknown'
        when cast({{ col_name }} as integer) < 100 then 'Low'
        when cast({{ col_name }} as integer) < 200 then 'Medium'
        else 'High'
    end
{% endmacro %}
 