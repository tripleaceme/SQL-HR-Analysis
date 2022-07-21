# SQL HR Analysis
 Human Resource Analysis with SQL


<p> <a href="#" target="blank"><img src="https://github.com/tripleaceme/SQL-HR-Analysis/blob/main/Bad%20to%20Good.png" alt="Combined" /></a> </p>

# Putting the database in Proper use format
- Run [this first](/HR.sql)
- Then [run this](/HR%20Databse%20Correction.sql)

## Why run the two ?
- The original designer [here]() added the manager_id to the employees table and that can cause problem in the near future as some rows have `null` values
<p> <a href="#" target="blank"><img src="https://github.com/tripleaceme/SQL-HR-Analysis/blob/main/Default%20ER%20Diagram.png" alt="Default" /></a> </p>

- The employees with `null` as thier manager_id means that they don't report to anyone and we can afford to fill the database will `null` values.
- So we create a new table titled managers and pulled the information from the employees manager_id column into it.
<p> <a href="#" target="blank"><img src="https://github.com/tripleaceme/SQL-HR-Analysis/blob/main/Bad%20to%20Good.png" alt="Modified" /></a> </p>

# The Analysis
- It can be accessed [here](/HR%20Analysis.sql)


Enjoy and do share your analysis on LinkedIn by tagging [Adegbite Ayoade Abel]()

# Happy Data Sleuthing