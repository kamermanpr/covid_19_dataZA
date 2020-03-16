############################################################
#                                                          #
#                  COVID-19 ZA dataframe                   #
#                                                          #
############################################################

#-- Historical data from the NICD: 2020-03-11 to 2020-03-14 --#
# date <- c(rep('2020-03-12', 9),
#           rep('2020-03-13', 9),
#           rep('2020-03-14', 9))
# 
# provinces <- c(rep(c('FS',
#                      'EC',
#                      'GP',
#                      'KZN',
#                      'LP',
#                      'MP',
#                      'NW',
#                      'NC',
#                      'WC'), 3))
# 
# n_cases <- c(c('FS' = 0,
#                'EC' = 0,
#                'GP' = 6,
#                'KZN' = 8,
#                'LP' = 0,
#                'MP' = 1,
#                'NW' = 0,
#                'NC' = 0,
#                'WC' = 1),
#              c('FS' = 0,
#                'EC' = 0,
#                'GP' = 10,
#                'KZN' = 10,
#                'LP' = 0,
#                'MP' = 1,
#                'NW' = 0,
#                'NC' = 0,
#                'WC' = 3),
#              c('FS' = 0,
#                'EC' = 0,
#                'GP' = 17,
#                'KZN' = 11,
#                'LP' = 0,
#                'MP' = 1,
#                'NW' = 0,
#                'NC' = 0,
#                'WC' = 9))
# 
# n_deaths <- c(c('FS' = 0,
#                 'EC' = 0,
#                 'GP' = 0,
#                 'KZN' = 0,
#                 'LP' = 0,
#                 'MP' = 0,
#                 'NW' = 0,
#                 'NC' = 0,
#                 'WC' = 0),
#               c('FS' = 0,
#                 'EC' = 0,
#                 'GP' = 0,
#                 'KZN' = 0,
#                 'LP' = 0,
#                 'MP' = 0,
#                 'NW' = 0,
#                 'NC' = 0,
#                 'WC' = 0),
#               c('FS' = 0,
#                 'EC' = 0,
#                 'GP' = 0,
#                 'KZN' = 0,
#                 'LP' = 0,
#                 'MP' = 0,
#                 'NW' = 0,
#                 'NC' = 0,
#                 'WC' = 0))
# 
# n_tests <- c(rep(848, 9),
#              rep(924, 9),
#              rep(1017, 9))
# 
# data <- data.frame(date = date,
#                    provinces = provinces,
#                    n_tests = n_tests,
#                    n_cases = n_cases,
#                    n_deaths = n_deaths)
# 
# write.csv(data, file = 'data.csv', row.names = FALSE)

data <- read.csv('data.csv', stringsAsFactors = FALSE)

data <- tibble::add_row(.data = data,
                        date = as.character(rep(Sys.Date(), 9)),
                        provinces = c('FS', 
                                      'EC',
                                      'GP',
                                      'KZN',
                                      'LP',
                                      'MP',
                                      'NW',
                                      'NC',
                                      'WC'),
                        n_tests = rep(2405, 9),
                        n_cases = c('FS' = 0, 
                                    'EC' = 0,
                                    'GP' = 31,
                                    'KZN' = 12,
                                    'LP' = 1,
                                    'MP' = 2,
                                    'NW' = 0,
                                    'NC' = 0,
                                    'WC' = 16),
                        n_deaths = c('FS' = 0, 
                                     'EC' = 0,
                                     'GP' = 0,
                                     'KZN' = 0,
                                     'LP' = 0,
                                     'MP' = 0,
                                     'NW' = 0,
                                     'NC' = 0,
                                     'WC' = 0))

write.csv(data, file = 'data.csv', row.names = FALSE)


