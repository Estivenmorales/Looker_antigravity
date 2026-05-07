connection: "looker-bigquery-connection"

include: "/mintic_looker/tb_exclusiones_soporte.view.lkml"
include: "/*.dashboard"

explore: tb_exclusiones_soporte {
  label: "Exclusiones Soporte"
  description: "Análisis de exclusiones y tiempos de falla por elemento de red"
}
