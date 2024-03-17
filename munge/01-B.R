library(tidyverse)

preprocessing <- function(df)
{
  # By using dplyr functions, select required variables which does not have Unknown's and rename employment status data.
  dff <- df %>% 
    select(learner_id, gender, highest_education_level:employment_area) %>% 
    filter(gender != "Unknown", highest_education_level != "Unknown", 
           employment_status != "Unknown", employment_area != "Unknown")
  return(dff)
}

cyber.security.1_enrolments.filtered <- preprocessing(cyber.security.1_enrolments)
cyber.security.2_enrolments.filtered <- preprocessing(cyber.security.2_enrolments)
cyber.security.3_enrolments.filtered <- preprocessing(cyber.security.3_enrolments)
cyber.security.4_enrolments.filtered <- preprocessing(cyber.security.4_enrolments)
cyber.security.5_enrolments.filtered <- preprocessing(cyber.security.5_enrolments)
cyber.security.6_enrolments.filtered <- preprocessing(cyber.security.6_enrolments)
cyber.security.7_enrolments.filtered <- preprocessing(cyber.security.7_enrolments)
