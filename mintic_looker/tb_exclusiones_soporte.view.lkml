view: tb_exclusiones_soporte {
  sql_table_name: `mintic-indicadores-calidad-prd.disponibilidad.TB_EXCLUSIONES_SOPORTE` ;;

  dimension: codigo_elemento_red {
    type: string
    sql: ${TABLE}.CODIGO_ELEMENTO_RED ;;
  }

  dimension: tipo_elemento_red {
    type: string
    sql: ${TABLE}.TIPO_ELEMENTO_RED ;;
  }

  dimension: tecnologia {
    type: number
    sql: ${TABLE}.TECNOLOGIA ;;
  }

  dimension: departamento {
    type: number
    sql: ${TABLE}.DEPARTAMENTO ;;
  }

  dimension: municipio {
    type: number
    sql: ${TABLE}.MUNICIPIO ;;
  }

  dimension: localidad {
    type: number
    sql: ${TABLE}.LOCALIDAD ;;
  }

  dimension_group: fecha_inicio_falla {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_INICIO_FALLA ;;
  }

  dimension: hora_inicio_falla {
    type: string
    sql: ${TABLE}.HORA_INICIO_FALLA ;;
  }

  dimension: tiempo_falla {
    type: number
    sql: ${TABLE}.TIEMPO_FALLA ;;
  }

  dimension: tipo_falla {
    type: string
    sql: ${TABLE}.TIPO_FALLA ;;
  }

  dimension: exclusiones {
    type: number
    sql: ${TABLE}.EXCLUSIONES ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.ISP ;;
  }

  measure: total_tiempo_falla {
    type: sum
    sql: ${tiempo_falla} ;;
  }

  measure: total_exclusiones {
    type: sum
    sql: ${exclusiones} ;;
  }

  measure: count {
    type: count
    drill_fields: [codigo_elemento_red, tipo_elemento_red, isp]
  }
}
