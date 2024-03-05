# Define the database connection to be used for this model.
connection: "looker_private_demo"

# include all the views
include: "//hs_core/models/order_items.explore"
include: "//hs_core/models/datagroups"
include: "//hs_core/models/value_formats"
include: "/views/daveward-ps-dev.ecomm/users.view.lkml"
include: "/views/daveward-ps-dev.ecomm/marketing_order_items.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hs_marketing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hs_marketing_default_datagroup

explore: marketing_order_items {
  persist_with: order_items_refresh
  extends: [order_items]
  view_name: order_items
  join: users {
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
