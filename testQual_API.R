library(qualtRics)
library(boxr)
library(readr)

#tokenPath = 'data/token.json'

#box_auth_service(token_file = tokenPath)


qualtrics_api_credentials(api_key = "oF7OzqxCArxwUHOWclfUYlPU7qrSH8VkjLY2PL7i", 
                          base_url = "ca1.qualtrics.com",
                          install = TRUE)

surveys <- all_surveys() 
surveys




mysurvey <- fetch_survey(surveyID = surveys$id[26], force_request = TRUE,
                         verbose = TRUE, col_types = readr::cols(Q13_2_3_1 = readr::col_character()))

mysurvey
#view(mysurvey)

write.csv(mysurvey,"~/Box/SEAL-r/rSEAL_Data/testsurvey4.csv",row.names = FALSE)
#box_push(dir_id = 132211861740, local_dir = "box/", ignore_dots = TRUE, overwrite = TRUE, delete = FALSE)
