# The name of this view in Looker is "Fan Experience Promo Email"
view: fan_experience_promo_email {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.ecomm.fan_experience_promo_email` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Unit Price" in Explore.

  dimension: avg_unit_price {
    type: number
    sql: ${TABLE}.avg_unit_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_unit_price {
    type: sum
    sql: ${avg_unit_price} ;;  }
  measure: average_avg_unit_price {
    type: average
    sql: ${avg_unit_price} ;;  }

  dimension: centroid_label {
    type: string
    sql: ${TABLE}.centroid_label ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_usage {
    type: number
    sql: ${TABLE}.event_usage ;;
  }

  dimension: purchases {
    type: number
    sql: ${TABLE}.purchases ;;
  }

  dimension: users_first_name {
    type: string
    sql: ${TABLE}.users_first_name ;;
  }

  dimension: users_name {
    type: string
    sql: ${TABLE}.users_name ;;
  }
  measure: count {
    type: count
    drill_fields: [users_name, users_first_name]
  }
}
