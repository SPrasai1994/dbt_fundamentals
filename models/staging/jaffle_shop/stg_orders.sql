with 
source as (
    select * from {{ source('public','orders')}}
),

staged as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from staged