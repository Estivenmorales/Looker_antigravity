connection: "mintic_indicadores_prd"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: antigravity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: antigravity_default_datagroup

explore: ambitos_geograficos {}

