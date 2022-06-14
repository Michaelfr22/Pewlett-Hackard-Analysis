# Pewlett-Hackard-Analysis

## Overview
To this day, companies of all sizes are learning how to balance the import of new hires with the export of employee turnover and retirement. Pewlett Hackard is not immune to this ongoing struggle, as the organization is preparing to lose thousands of employees to retirement. The purpose of this analysis is to minimize gaps in productivity by identifying the number of employees who are eligible to retire (organized by title) and the number of employees that are eligible to pursue a mentorship program. Thus, an employee database was constructed to present the expected magnitude of the situation at hand.

## Database Diagram
 - Six tables (CSV files)
 - Four unique Foreign Keys
 - Datatypes for each key

![QuickDBD-Free Diagram (1)](https://user-images.githubusercontent.com/102773052/173637709-e2cd119f-def2-4021-8f03-453006e7b79b.png)

## Results

#### Eligible Retirees
Pewlett Hackard has 300,024 employees at the time of the analysis; of the total, 99,038 are able to retire (30.1%).
#### Eligible Retirees by Title
Senior Engineers (32.5%), Senior Staff (31.3%), Engineer (15.7%), Staff (13.5%), Technique Leader (5.0%), Assistant Engineer (1.9%) and Manager (<0.1%)
#### Eligible Mentees
PH has 1,549 employees eligible to pursue the Mentorship Program.

## Summary

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Pewlett Hackard has 90,398 employees that can retire in the near future. The exact number of roles to be filled will be determined by the actual number of retirees.
#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
With 90,398 eligible retirees and 1,549 eligible mentees for the program, the ratio of retirees-to-mentees is 58:1. There are more than enough PH retirement-ready professionals qualified to tranfer their accumulated knowledge to the upcoming generation through the mentorship program.

## Additional Queries for Deeper Insight

#### How can the number of mentorship-eligible employees be increased to maximize the value of the program?
Expand the query that initializes eligibility requirements (birth date) to include employees of varying age and experience.
#### When is the next "silver tsunami" and what will it's magnitude look like?
Create a new query that counts the number of eligible retirees over the next 10+ years.
