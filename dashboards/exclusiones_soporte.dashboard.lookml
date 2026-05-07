- dashboard: exclusiones_soporte
  title: "Dashboard de Exclusiones Soporte"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: "Monitoreo de exclusiones y tiempos de falla por elemento de red"

  elements:
    - name: total_exclusiones_val
      title: "Total Exclusiones"
      model: antigravity
      explore: tb_exclusiones_soporte
      type: single_value
      fields: [tb_exclusiones_soporte.total_exclusiones]
      limit: 500

    - name: total_tiempo_falla_val
      title: "Tiempo Total de Falla (min)"
      model: antigravity
      explore: tb_exclusiones_soporte
      type: single_value
      fields: [tb_exclusiones_soporte.total_tiempo_falla]
      limit: 500

    - name: exclusiones_por_isp
      title: "Exclusiones por ISP"
      model: antigravity
      explore: tb_exclusiones_soporte
      type: looker_column
      fields: [tb_exclusiones_soporte.isp, tb_exclusiones_soporte.total_exclusiones]
      sorts: [tb_exclusiones_soporte.total_exclusiones desc]
      limit: 500

    - name: exclusiones_por_tipo_falla
      title: "Exclusiones por Tipo de Falla"
      model: antigravity
      explore: tb_exclusiones_soporte
      type: looker_pie
      fields: [tb_exclusiones_soporte.tipo_falla, tb_exclusiones_soporte.total_exclusiones]
      sorts: [tb_exclusiones_soporte.total_exclusiones desc]
      limit: 500

    - name: tendencia_exclusiones
      title: "Tendencia de Exclusiones"
      model: antigravity
      explore: tb_exclusiones_soporte
      type: looker_area
      fields: [tb_exclusiones_soporte.fecha_inicio_falla_date, tb_exclusiones_soporte.total_exclusiones]
      fill_fields: [tb_exclusiones_soporte.fecha_inicio_falla_date]
      sorts: [tb_exclusiones_soporte.fecha_inicio_falla_date desc]
      limit: 500
