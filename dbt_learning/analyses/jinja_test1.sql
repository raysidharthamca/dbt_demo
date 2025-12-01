{%- set var_name = 'test value' -%}

{{ var_name ~ '\n'}}

{%- set apples = [
    'fuji',
    'gala',
    'honeycrisp'
] -%}

{% for i in apples %}
    {%- if i != 'gala' -%}
    {{ i ~ '\n'}}
    {%- else -%}
    {{ 'this is a gala apple' ~ '\n' -}}
    {%- endif -%}
{% endfor %}