-- 1. Write an SQL query to retrieve the **checkNumber**, **paymentDate**, and **amount** from the **payments** table.  

    select checkNumber, paymentDate, amount from  payments;

-- 2. Write an SQL query to retrieve the **orderDate**, **requiredDate**, and **status** of orders that are currently 'In Process' from the **orders** table. Sort the results in **descending** order of **orderDate**
    select orderDate, requiredDate, status from orders where status ='In Process'  order by orderDate DESC;
-- 3. Write a query to display the **firstName**, **lastName**, and **email** of employees whose job title is 'Sales Rep' and order them in **descending** order of **employeeNumber**.  
    select firstName, lastName, email from employees where job_title='Sales Rep' order by employeeNumber desc;

-- 4. Write a query to retrieve **all** the columns and records from the **offices** table.  
     select * from offices;

-- 5. Write a query to fetch the **productName** and **quantityInStock** from the **products** table. Sort the results in ascending order of **buyPrice** and limit the output to **5** records.  
    select productName, quantityInStock from products order by buyPrice asc limit 5;
    
