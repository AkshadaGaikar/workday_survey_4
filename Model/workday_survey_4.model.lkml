connection: "midt_dev_connect_4905"
include: "/View/**/*.view.lkml"

datagroup: workday_survey_2_default_datagroup {
  max_cache_age: "1 hour"}

persist_with: workday_survey_2_default_datagroup
#include: "/Dashboard/*.dashboard.lookml"
#explore: manager_emp_hier_new {}

explore: manager_emp_hier4  {
  join: manager_emp_hier_4_2 {
    type: left_outer
    sql_on: ${manager_emp_hier4.manager_id}=${manager_emp_hier_4_2.ManagerID};;
    relationship: many_to_one
  }
}

explore: survey_4 {
  extends: [manager_emp_hier4]

  #sql_always_where:

  join: manager_emp_hier4 {
    type: left_outer
    sql_on: ${survey_4.employee_id}=${manager_emp_hier4.employee_id};;
    relationship: many_to_one
  }
}

#${manager_emp_hier_4.manager_id} ='{{_user_attributes['email']}}' and ${manager_emp_hier_4_2.NumberOfEmpUnder} >2 ;;
