view: top_10_customer_Test {
  derived_table: {
    sql: SELECT
        Check_Customers.CustomerName  AS check_customer_customer_name_1,
        COALESCE(SUM(Check_Customers.Sales ), 0) AS check_customer_sales_1
      FROM customer_transactions AS Check_Customer

      GROUP BY 1
      ORDER BY 2 DESC
      LIMIT 10
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: check_customer_customer_name_1 {
    type: string
    sql: ${TABLE}.check_customer_customer_name_1 ;;
  }

  dimension: check_customer_sales_1 {
    type: number
    sql: ${TABLE}.check_customer_sales_1 ;;
  }

  set: detail {
    fields: [check_customer_customer_name_1, check_customer_sales_1]
  }
}
