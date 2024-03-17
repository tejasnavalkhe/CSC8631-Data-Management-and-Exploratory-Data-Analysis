# Combine (bind) all data frames into a single data frame
cyber.security.enrolments <- bind_rows(cyber.security.1_enrolments.filtered, cyber.security.2_enrolments.filtered, 
                            cyber.security.3_enrolments.filtered, cyber.security.4_enrolments.filtered, 
                            cyber.security.5_enrolments.filtered, cyber.security.6_enrolments.filtered,
                            cyber.security.7_enrolments.filtered)

# Glimpse of whole enrolment dataset
# glimpse(cyber.security.enrolments)

# Length of the total rows
# length(rownames(cyber.security.enrolments))


