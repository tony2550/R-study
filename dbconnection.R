install.packages("RPostgres") # RPostgres 설치

# db PostgreSQL Credentials
#test_database = "rdatabase"
#test_hostname = "<your host name>"  
#test_port = "<port>"              #default port : 5432 
#test_uid = "<your user id>"
#test_pwd = "<your password>"

print('Start to DB Connect')

dbName <- 'rdatabase'
  
pg <- dbDriver("PostgreSQL")
  
print('DB Driver is Loaded')
  
con <- dbConnect(RPostgres::Postgres(),dbname = test_database,
                 host = test_hostname,
                 port = test_port,
                 user = test_uid,
                 password = test_pwd)

print('DB Connect Success')

rm(test_pwd) # remove password


dbListTables(con)

dbWriteTable(con, 'mtcars', mtcars)

dbListTables(con)

dbReadTable(con, 'mtcars')
