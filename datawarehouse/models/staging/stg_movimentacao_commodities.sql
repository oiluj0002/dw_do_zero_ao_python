WITH source AS (
    SELECT
        date,
        symbol,
        action,
        quantity
    FROM
        {{ source ('dbsales_viz0', 'movimentacao_commodities') }}
),

renamed AS (
    SELECT
        CAST(date AS date) AS data,
        symbol AS ticker,
        action AS acao,
        quantity AS quantidade
    FROM 
        source
)

SELECT * FROM renamed