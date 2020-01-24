-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT product.ProductName, category.CategoryName 
    FROM product
    JOIN category on  product.categoryId = category.id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT [order].Id, shipper.CompanyName 
    FROM [order]
    JOIN shipper on [order].ShipVia = shipper.Id
    WHERE [order].OrderDate <'2012-08-09'; 
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT product.ProductName , orderdetail.Quantity
    FROM [order] 
    JOIN orderdetail on [order].Id = orderdetail.orderId
    JOIN product on product.id = orderdetail.productID
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    SELECT [order].id, customer.CompanyName, employee.LastName
    FROM [order]
    JOIN customer on [order].customerId = customer.id
    JOIN employee on [order].employeeId = employee.id