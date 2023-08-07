view: survey_4 {
  sql_table_name: `WORKDAY_SURVEY.survey5` ;;

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension: question {
    type: string
    sql: ${TABLE}.Question ;;
  }
  dimension: response {
    type: string
    sql: ${TABLE}.Response ;;
  }
  dimension: survey_name {
    type: string
    sql: ${TABLE}.SurveyName ;;
  }



  measure: count {
    type: count
    drill_fields: [survey_name]
  }
}
