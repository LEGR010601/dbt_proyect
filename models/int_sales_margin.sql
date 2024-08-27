SELECT 
*,
quantity*purchase_price AS purchase_cost,
revenue - (quantity*purchase_price) AS margin
FROM 
{{ref('stg_raw__product')}}
JOIN 
{{ref('stg_raw__sales')}}
USING (products_id)





