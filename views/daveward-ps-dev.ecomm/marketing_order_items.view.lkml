include: "//hs_core/views/order_items.view"
view: +order_items {


  measure: count_of_users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: count_of_orders {
    type: count_distinct
    sql: ${order_id} ;;
  }

  measure: total_sales_euro {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: euro_in_thousands
  }

  dimension: user_id {
    hidden: yes
  }

 }
