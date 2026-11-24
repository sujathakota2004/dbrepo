{% snapshot snap_ticket_status %}
    {{
        config(
            target_schema='silver',
            target_database='hdfc_db',
            unique_key='tid',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ source('s1', 't_tickets') }}
 {% endsnapshot %}