connection: "test1"

# include all the views
include: "/views/**/*.view"

#include all the dashboards
#include: "/dashboard/*.dashboard.lookml"

datagroup: redshift_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: redshift_test_default_datagroup

explore: Check_Customers {}

explore: top_10_customer {}
