Library-Management-System

 Entities and Attributes
 
- Books
    - Attributes: BookID, Title, Author, Publisher, YearPublished, Genre, ISBN, QuantityAvailable
    - Primary Key: BookID
- Members
    - Attributes: MemberID, Name, Email, Phone, Address, JoinDate
    - Primary Key: MemberID
- BorrowTransactions
    - Attributes: TransactionID, MemberID, BookID, BorrowDate, DueDate, ReturnDate
    - Primary Key: TransactionID
    - Foreign Keys:
      - MemberID → References Members(MemberID)
      - BookID → References Books(BookID)
- Admins
    - Attributes: AdminID, Username, PasswordHash, Role
    - Primary Key: AdminID


 Relationships Between Entities
 
- Members → BorrowTransactions
    A member can have many borrow transactions.
    (One-to-Many relationship)
- Books → BorrowTransactions
    A book can appear in many borrow transactions.
    (One-to-Many relationship)
- Admins operate independently and are not directly linked to transactions, books, or members.
    (No direct relationship defined with other entities)


 Files Included

   Task1(librarymanagementsystem).sql - SQL DDL to create the database of library management system.

