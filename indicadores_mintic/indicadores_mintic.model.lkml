  connection: "mintic_indicadores"

include: "/views/*.view.lkml"
include: "/Dashboards/*.dashboard"  

explore: tb_exclusiones_soporte {
  label: "Exclusiones Soporte"
  description: "Análisis de exclusiones y tiempos de falla por elemento de red"
}
