view: manager_emp_hier_4_2 {
  derived_table: {
    sql: SELECT ManagerID ,count(EmployeeID) as NumberOfEmpUnder FROM `sab-dev-proj-dev-dw-4905.WORKDAY_SURVEY.manager_emp_hier5` group by ManagerID
      ;;
  }
  dimension: ManagerID {
    description: "Unique ManagerID"
    type: string
    primary_key: yes
    sql: ${TABLE}.ManagerID ;;
  }
  dimension: NumberOfEmpUnder {
    description: "The total number of emp under manager"
    type: number
    hidden: yes
    sql: ${TABLE}.NumberOfEmpUnder ;;
  }


  measure: Total_Num_Emp {
    type: sum
    sql:${NumberOfEmpUnder}  ;;

  }
}
