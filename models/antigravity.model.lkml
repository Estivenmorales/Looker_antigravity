connection: "mintic_indicadores_prd"

# include all the views
include: "/views/**/*.view.lkml"

include: "/dashboards/*.dashboard.lookml"

datagroup: antigravity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: antigravity_default_datagroup

explore: ambitos_geograficos {
  label: "Ámbitos Geográficos"
}

explore: tb_exclusiones_soporte {
  label: "Exclusiones Soporte"
  description: "Análisis de exclusiones y tiempos de falla por elemento de red"

  join: ambitos_geograficos {
    type: left_outer
    relationship: many_to_one
    sql_on: CAST(${ambitos_geograficos.cod_mpio} AS INT64) = ${tb_exclusiones_soporte.municipio} ;;
  }
}
