from datetime import datetime

year = int(input("Please input your birth year:"))
month = int(input("Please input your birth month(month number):"))
day = int(input("Please input your day of birth (day of month only):"))

ageSeconds = (datetime.now() - datetime(year=year, month=month, day=day)).total_seconds()


print("You are " + str(int(ageSeconds)) + " seconds old")





#Code cited from Devesh Kumar Singh on Stack overflow
