{% snapshot snapshot_stock_prices_weekly_avg %}

{{
  config(
    target_schema='snapshot',
    unique_key='Week_start',
    strategy='timestamp',
    updated_at='timestamp',
    invalidate_hard_deletes=True 
  )
}}  

SELECT * FROM {{ ref('stock_prices_weekly_avg') }}

{% endsnapshot %}