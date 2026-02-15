
{% macro multiply_with_precision(num1, num2, precision=2) %}
    round(
        ({{ num1 }} * {{ num2 }}),
        {{ precision }}
    )
{% endmacro %}
