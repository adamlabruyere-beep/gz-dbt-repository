SELECT
quantity * purchase_price AS purchase_cost,
revenue (quantity * purchase_price) AS margin
FROM {{ ref{stg_raw__sales.sql} }}
FULL OUTER JOIN {{ ref{stg_raw__product.sql} }} USING(products_id)