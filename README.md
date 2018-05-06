## Simple web app with with rack
clone & run
```
bundle install
bundle exec rackup
```
### Car Loan Calculator

Suppose ABC bank is offering Car Loan to its customers. As a software developer, you have to develop an application for this bank which will facilitate the bankers and its customers for effective calculations regarding car loan plans and installments with reference to number of years. For your guidance, bank has provided you the following eligibility criteria for car loans.

| Requirements               | Salaried Individuals | Business Persons |
|----------------------------|----------------------|------------------|
| **Citizenship**            | Pakistani            | Pakistani        |
| **Age**                    | 22-60yr              | 22-70yr          |
| **Minimum monthly income** | Rs.50,000            | Rs.75,000        |
###### Table: Eligibility Criteria for Car Loan
###### Task 1:

You are required to write an application program which will facilitate user to check eligibility
based on the upper table. If the user is not eligible, the application will prompt user “You are
not eligible for this loan” and this step should be repeated to check other customer’s eligibility
criteria.

###### Task 2:
In other case if the user is eligible, your developed application should provide an interface which
will ask the following information to calculate monthly installment as per plan.
* Car name
* Total Cost of Vehicle (In Rupees)
* Down payment (20-50%)
* Number of Years (3,4,5)
* Markup Rate (taken from customer 10 - 15%)

###### How to do?

* First check the eligibility
* If a person is eligible remaining process will be carried out.
* Followings are the parameters taken from the customer:-
    * Car name
    * Total Cost of Vehicle
    * Down payment
    * Number of Years
    * Markup Rate Option

**Note: -** Followings are checks on different fields
* Car Name (Choose from given list of Vehicles)
* Down payment should be from 20% to 50%
* Mark up will be charged 10 to 15% Per Annum
* Number of years of installments should be 3, 4 or 5.
* Following is an example for 3 years plan; your application should support all three plans
(3, 4 and 5 years).
