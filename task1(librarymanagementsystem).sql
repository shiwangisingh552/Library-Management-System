CREATE DATABASE Librarymanagementsystem;
USE Librarymanagementsystem;

Create Book table-(Stores information about each book in the library.)

CREATE TABLE Books (
    BookID INT PRIMARY KEY,  -- PK: Unique ID for each book
    Title VARCHAR(255),
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    YearPublished INT,
    Genre VARCHAR(100),
    ISBN VARCHAR(20),
    QuantityAvailable INT
);

Create Members table-(Holds details of registered library users.)

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,  -- PK: Unique ID for each member
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Address TEXT,
    JoinDate DATE
);

Create Borrowtransactions-(Keeps records of book borrowings and returns.)

CREATE TABLE BorrowTransactions (
    TransactionID INT PRIMARY KEY,  -- PK: Unique ID for each transaction
    MemberID INT,                   -- FK: References Members(MemberID)
    BookID INT,                     -- FK: References Books(BookID)
    BorrowDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

Create Admins table-(Used to manage library staff or system administrators.)

CREATE TABLE Admins (
    AdminID INT PRIMARY KEY,       -- PK: Unique ID for each admin
    Username VARCHAR(100),
    PasswordHash VARCHAR(255),
    Role VARCHAR(50)
);
