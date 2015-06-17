
as.Date('1/15/2001',format='%m/%d/%Y')

as.Date('April 26, 2001',format='%B %d, %Y')

bdays = c(tukey=as.Date('1915-06-16'),fisher=as.Date('1890-02-17'), cramer=as.Date('1893-09-25'), kendall=as.Date('1907-09-06'))
bday=c(s=as.Date('2015-06-22'),t=as.Date('2015-01-02'))

dtimes = c("2002-06-09 12:45:40","2003-01-29 09:30:40","2002-09-04 16:45:40","2002-11-13 20:00:40","2002-07-07 17:30:40")
dt="2002-06-09 12:45:40"
dtparts = t(as.data.frame(strsplit(dtimes,' ')))
dts = c("2005-10-21 18:47:22","2005-12-24 16:39:58","2005-10-28 07:30:05 PDT")
seq(as.Date('1976-7-4'),by='days',length=10)


## Code used to create dataset
set.seed(10)
w<-sample(10)
w

dob_start <- as.Date('1950-01-01')
dob_start <- as.Date('26-12-1989')
dob_start
dob_end <- as.Date('1994-01-01')

dob_end
hire_start <- as.Date('1985-01-01')

hire_start
hire_end <- as.Date('1994-01-01')
hire_end

poss_dobs <- seq(dob_start, dob_end, 'days')
poss_dobs

poss_hires <- seq(hire_start, hire_end, 'days')
poss_hires

set.seed(5234)


dob <- sample(poss_dobs, 99, replace=TRUE)

dob
set.seed(1234)


hire_date <- sample(poss_hires, 99, replace=TRUE)


eedata <- data.frame(ee_num = 1:99, dob, hire_date)


write.csv(eedata, file='R_Programming/Dates_and_Times/eedata.csv', 
          
          
          row.names=FALSE)



### date and time

 as.Date('1/15/2001',format='%m/%d/%Y')
[1] "2001-01-15"
 as.Date('April 26, 2001',format='%B %d, %Y')
[1] "2001-04-26"
 as.Date('22JUN01',format='%d%b%y')   # %y is system-specific; use with caution
[1] "2001-06-22"

