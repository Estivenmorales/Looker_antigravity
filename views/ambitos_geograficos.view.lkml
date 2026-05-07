view: ambitos_geograficos {
  sql_table_name: `disponibilidad.Ambitos_Geograficos` ;;


  dimension: categoria {
    type: string
    description: "Categoria del municipio"
    sql: ${TABLE}.CATEGORIA ;;
  }
  dimension: cod_dpto {
    type: string
    description: "Código del departamento"
    sql: ${TABLE}.COD_DPTO ;;
  }
  dimension: cod_localidad {
    type: string
    description: "Código de la localidad"
    sql: ${TABLE}.COD_LOCALIDAD ;;
  }
  dimension: cod_mpio {
    type: string
    description: "Código del municipio"
    sql: ${TABLE}.COD_MPIO ;;
  }
  dimension: geometria {
    type: string
    description: "Geometria del municipio"
    sql: ${TABLE}.GEOMETRIA ;;
  }
  dimension: mun_cap_otros {
    type: string
    sql: ${TABLE}.MUN_CAP_OTROS ;;
  }
  dimension: nom_dpto {
    type: string
    description: "Nombre del departamento"
    sql: ${TABLE}.NOM_DPTO ;;
  }
  dimension: nom_localidad {
    type: string
    description: "Nombre de la localidad"
    sql: ${TABLE}.NOM_LOCALIDAD ;;
  }
  dimension: nom_mpio {
    type: string
    description: "Nombre del municipio"
    sql: ${TABLE}.NOM_MPIO ;;
  }
  dimension: zona {
    type: string
    description: "Zona del municipio"
    sql: ${TABLE}.ZONA ;;
  }
  measure: count {
    type: count
  }
}
