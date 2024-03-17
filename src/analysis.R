library('ProjectTemplate')
load.project()

############## Employment Status ##############

# Count / Frequency of number of employment status
cyber.security.enrolments %>% 
  count(employment_status, sort = TRUE)


# Bar plot of number of employment status
cyber.security.enrolments %>% 
  ggplot(aes(employment_status, fill=employment_status)) +
  geom_bar() +
  coord_flip() +
  labs(title="Number of Employment Status",
       x ="Employment Status", y = "Count") +
  scale_x_discrete(labels= 
                     c("Full Time Student", "Looking For Work", 
                       "Not Working", "Retired", "Self Employed", 
                       "Unemployed", "Working Full Time", 
                       "Working Part Time"))+
  theme(axis.text.x=element_text(color = "black", size=10, angle=35, vjust=0.8,
                                 hjust=0.8))


# Save previous barplot
ggsave("graphs/Number of Employment Status.png")


# Calculating Percentage of Number of employment status
cyber.security.enrolments.employee_status.percentage <- cyber.security.enrolments %>% 
  group_by(employment_status) %>% # Variable to be transformed
  mutate(employment_status = str_replace(employment_status, "full_time_student", "Full Time Student"),
         employment_status = str_replace(employment_status, "looking_for_work", "Looking For Work"),
         employment_status = str_replace(employment_status, "not_working", "Not Working"),
         employment_status = str_replace(employment_status, "retired", "Retired"),
         employment_status = str_replace(employment_status, "self_employed", "Self Employed"),
         employment_status = str_replace(employment_status, "unemployed", "Unemployed"),
         employment_status = str_replace(employment_status, "working_full_time", "Working Full Time"),
         employment_status = str_replace(employment_status, "working_part_time", "Working Part Time")) %>% 
  count() %>% 
  ungroup() %>% 
  mutate(perc = `n` / sum(`n`)) %>% 
  arrange(perc) %>%
  mutate(labels = scales::percent(perc))

# Pie chart of Percentage of employment status
cyber.security.enrolments.employee_status.percentage %>% 
  ggplot(aes(x="", y=perc, fill=employment_status))+
  geom_col()+
  geom_label(aes(label = labels), colors = c(1, "white", "white"),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  guides(fill = guide_legend(title = "Employment Status")) +
  scale_fill_viridis_d() +
  coord_polar(theta = "y") +
  theme_void()

# Save previous pie chart
ggsave("graphs/Percentage of Employment Status.png")


############## Employment Area / Sector ##############

# Count / Frequency of number of employment area
cyber.security.enrolments %>% 
  count(employment_area, sort = TRUE)


# Calculating Percentage of Number of employment area
cyber.security.enrolments.employee_area.percentage <- cyber.security.enrolments %>% 
  group_by(employment_area) %>% # Variable to be transformed
  mutate(employment_area = str_replace(employment_area, "it_and_information_services", "IT And Information Services"),
         employment_area = str_replace(employment_area, "teaching_and_education", "Teaching And Education"),
         employment_area = str_replace(employment_area, "engineering_and_manufacturing", "Engineering And Manufacturing"),
         employment_area = str_replace(employment_area, "health_and_social_care", "Health And Social Care"),
         employment_area = str_replace(employment_area, "public_sector", "Public Sector"),
         employment_area = str_replace(employment_area, "business_consulting_and_management", "Business Consulting And Management"),
         employment_area = str_replace(employment_area, "accountancy_banking_and_finance", "Accountancy Banking And Finance"),
         employment_area = str_replace(employment_area, "charities_and_voluntary_work", "Charities And Voluntary Work"),
         employment_area = str_replace(employment_area, "law", "Law"),
         employment_area = str_replace(employment_area, "creative_arts_and_culture", "Creative Arts And Culture"),
         employment_area = str_replace(employment_area, "retail_and_sales", "Retail And Sales"),
         employment_area = str_replace(employment_area, "marketing_advertising_and_pr", "Marketing Advertising And PR"),
         employment_area = str_replace(employment_area, "science_and_pharmaceuticals", "Science And Pharmaceuticals"),
         employment_area = str_replace(employment_area, "media_and_publishing", "Media And Publishing"),
         employment_area = str_replace(employment_area, "hospitality_tourism_and_sport", "Hospitality Tourism And Sport"),
         employment_area = str_replace(employment_area, "armed_forces_and_emergency_services", "Armed Forces And Emergency Services"),
         employment_area = str_replace(employment_area, "transport_and_logistics", "Transport And Logistics"),
         employment_area = str_replace(employment_area, "energy_and_utilities", "Energy And Utilities"),
         employment_area = str_replace(employment_area, "environment_and_agriculture", "Environment And Agriculture"),
         employment_area = str_replace(employment_area, "property_and_construction", "Property And Construction"),
         employment_area = str_replace(employment_area, "recruitment_and_pr", "Recruitment And PR")) %>% 
  count() %>% 
  ungroup() %>% 
  mutate(perc = `n` / sum(`n`)) %>% 
  arrange(perc) %>%
  mutate(labels = scales::percent(perc)) %>% 
  view()










