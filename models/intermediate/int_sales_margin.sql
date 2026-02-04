SELECT
quantity * purchase_price AS purchase_cost,
revenue (quantity * purchase_price) AS margin
FROM {{ ref('sales') }}
FULL OUTER JOIN {{ ref('product') }} USING(products_id)