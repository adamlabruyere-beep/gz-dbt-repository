SELECT
quantity * purchase_price AS purchase_cost,
revenue (quantity * purchase_price) AS margin
FROM renamed
FULL OUTER JOIN source USING(products_id)