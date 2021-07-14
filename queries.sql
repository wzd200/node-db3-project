-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, categoryname FROM product as p
join category as c
on p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, s.companyname, orderdate FROM [Order] as o
left join shipper as s
on o.shipvia = s.id
where o.orderdate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT productname, quantity FROM Orderdetail as o
join product as p
on p.id = o.productid
where orderid=10251
order by productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id, companyname, lastname FROM [order] as o
join customer as c
on c.id = o.customerid
join employee as e
on e.id = o.employeeid;
