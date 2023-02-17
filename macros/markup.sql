{% macro markup(sellipprice, costprice) %}
({{sellipprice}} - {{costprice}})/{{costprice}}
{% endmacro %}