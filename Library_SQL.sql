create database  Library_LungeloNtombela ;
use Library_LungeloNtombela;

/*Question 1*/
create table branch (
Branch_no varchar(50) primary key,
Manager_id varchar(100),
Branch_address varchar(100),
Contact_no varchar(100)
);

insert into branch values 
('B001', 'M101', '1 Peter Mokaba Road', '+2719988676'), 
('B002', 'M102', '6 Windemere Road', '+2719988677'), 
('B003', 'M103', '7 Soldiers Way', '+27319988678'), 
('B004', 'M104', '3 Miriam Makeba Ave', '+27212988679'), 
('B005', 'M105', '9 Bulwer St', '+27873988680');  

select *from branch;

/*Question 2*/
create table Employee (
Emp_id varchar(50) primary key, 
Emp_name varchar(100), 
Branch_no varchar(50), 
foreign key (Branch_no) references Branch(Branch_no),
Position varchar(100), 
Salary int 
);

insert into Employee values 
('E101', 'John Craig', 'B002', 'Manager', 60000.00), 
('E102', 'Mandla Mabaso', 'B001', 'Clerk', 45000.00), 
('E103', 'Zama Dlamini', 'B003', 'Librarian', 55000.00), 
('E104', 'Mlondi Nzama', 'B004', 'Assistant', 40000.00), 
('E105', 'Sarah Brown', 'B001', 'Assistant', 42000.00), 
('E106', 'Sasha Michael', 'B002', 'Assistant', 43000.00), 
('E107', 'Michael Drewsbury', 'B001', 'Manager', 62000.00), 
('E108', 'Asanda Ncube', 'B003', 'Clerk', 46000.00), 
('E109', 'Ayanda Mbatha', 'B003', 'Librarian', 57000.00), 
('E110', 'Sifiso Ndaba', 'B003', 'Assistant', 41000.00), 
('E111', 'Buhle Nyaba', 'B003', 'Manager', 65000.00); 
select *from Employee;

/*Question 3*/
create table Customer (
Customer_Id varchar(100) primary key, 
Customer_name varchar(100), 
Customer_address varchar(100), 
Reg_date date
);

insert into Customer values
('C101', 'Mandla Dube', '123 Main St', '2021-05-15'), 
('C102', 'Eddie Cross', '456 Elm St', '2021-06-20'), 
('C103', 'Anele Malinga', '789 Oak St', '2021-07-10'), 
('C104', 'Eric Don', '567 Pine St', '2021-08-05'), 
('C105', 'Evans Murphy', '890 Maple St', '2021-09-25'), 
('C106', 'Thobeka Jali', '234 Cedar St', '2021-10-15'), 
('C107', 'Zandile Dlamini', '345 Walnut St', '2021-11-20'), 
('C108', 'Thandeka Ndlovu', '456 Birch St', '2021-12-10'), 
('C109', 'Ivy Brown', '567 Oak St', '2022-01-05'), 
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25'); 
select*from Customer;

/*Question 4*/
create table IssueStatus (
Issue_Id varchar(50) primary key, 
Issued_cust varchar(50), 
Issued_book_name varchar(255),
Issue_date date, 
Isbn_book VARCHAR(50), 


insert into IssueStatus VALUES
('IS101', 'C101', 'The Catcher in the Rye', '2023-05-01', '978-0-553-29698-2'),
('IS102', 'C102', 'The Da Vinci Code', '2023-05-02', '978-0-7432-4722-4'), 
('IS103', 'C103', '1491: New Revelations of the Americas Before Columbus', '2023-05-03', '978-07432-7357-1'), 
('IS104', 'C104', 'Sapiens: A Brief History of Humankind', '2023-05-04', '978-0-307-58837-1'), 
('IS105', 'C105', 'The Diary of a Young Girl', '2023-05-05', '978-0-375-41398-8');
select * from issuestatus;

/*Question 5*/
CREATE TABLE ReturnStatus (
Return_id VARCHAR(50) PRIMARY KEY, 
Return_cust VARCHAR(100), 
Return_book_name VARCHAR(255), 
Return_date DATE, 
isbn_book2 VARCHAR(100),
Foreign key (Return_cust) REFERENCES Customer(Customer_Id)
);


INSERT INTO ReturnStatus values 
('RS101', 'C101', 'The Catcher in the Rye', '2023-06-06','978-0-553-29698-2'), 
('RS102', 'C102', 'The Da Vinci Code', '2023-06-07', '978-0-7432-4722-4'), 
('RS103', 'C105', 'The Diary of a Young Girl', '2023-06-08', '978-0-375-41398-8'), 
('RS104', 'C108', 'The Histories', '2023-06-09', '978-0-14-044930-3'), 
('RS105', 'C110', 'A Game of Thrones', '2023-06-10', '978-0-09-957807-9');
select*from ReturnStatus;

/*Question 6*/
create table Books (
ISBN varchar(255) primary key, 
Book_title varchar(100), 
Category varchar(100), 
Rental_Price decimal(10,2), 
Status1 varchar(100), 
Author varchar(100), 
Publisher varchar(100)
);
insert into Books values 
('978-0-553-29698-2','The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'), 
('978-0-330-25864-8','Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'), 
('978-0-14-118776-1','One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'), 
('978-0-525-47535-5','The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'), 
('978-0-141-44171-6','Jane Eyre', 'Classic', 4.00, 'yes','Charlotte Bronte', 'Penguin Classics'), 
('978-0-307-37840-1','The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'), 
('978-0-679-76489-8','Harry Potter and the Sorcerers Stone','Fantasy',7.00,'yes','J.K. Rowling','Scholastic'), 
('978-0-7432-4722-4','The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'), 
('978-0-09-957807-9','A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'), 
('978-0-393-05081-8','A Peoples History of the United States','History', 9.00, 'yes', 'Howard Zinn','Harper Perennial'),
('978-0-19-280551-1','The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'), 
('978-0-307-58837-1','Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'), 
('978-0-375-41398-8','The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'), 
('978-0-14-044930-3','The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'), 
('978-0-393-91257-8','Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'), 
('978-0-7432-7357-1','1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books'); 
select *from books;

/*Question 7*/
select Emp_name,Salary
from Employee
order by Salary desc;

/*Question 8*/
select Category,count(*) as TotalBooks
from Books
Group by Category;

/*Question 9*/
select Emp_name,Position 
From Employee
where Salary > 50000;

/*Question 10*/
select Book_title
From Books
where Book_Title like '%history%';

/* Question 11 */
create procedure BranchEmpCount
as 
begin
select b.branch_no,count(e.Emp_id) as TotalNumberEmployess
from branch b
join
Employee e on b.Branch_no=e.Branch_no
group by b.Branch_no
having count(e.Emp_id)>3;
end;
exec BranchEmpCount;

/* Question 12 */
create view TheAvailableBooks as
select Book_title, Category, Rental_Price
from Books
where Status1 = 'yes';

/* Question 13 */
create procedure TheBooksIssued
as
begin
select b.Book_title,c.Customer_name
from IssueStatus i
  join
Customer c on i.Issued_Cust=c.Customer_Id
  join
books b on i.isbn_book=b.ISBN;
end;
exec TheBooksIssued;

/* Question 14 */
create procedure Customers_June
as
begin
select distinct c.Customer_name
from Customer c
join ReturnStatus r
    on c.Customer_Id = r.Return_cust
where month(r.Return_date)=6
and year(r.Return_date)=2023;
end;

/* Question 15 */
create procedure UpdatedBookStatus
@isbn varchar(255)
as
begin
update books
set Status1 = case 
when isbn = @isbn then 'yes'
else status1
end
where isbn = @isbn;
end;
exec UpdatedBookStatus '978-0-09-957807-9';
select *from books;

/* Question 16 */
create view Customers_no_Books as
select Customer_name
from Customer
where Reg_date <'2022-01-01'
and Customer_id not in
(select Issued_cust from IssueStatus);
select*from Customers_no_Books;











