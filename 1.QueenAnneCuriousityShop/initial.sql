USE QACS
GO

/**   CUSTOMER   **********************/

CREATE  TABLE CUSTOMER(
	CustomerID			Int					NOT NULL IDENTITY(1, 1),
	LastName			Char(25)			NOT NULL,
	FirstName			Char(25)			NOT NULL,
	[Address]			Char(35)			NULL,
	City				Char(35)			NULL,
	[State]				Char(2)				NULL,
	ZIP					Char(10)			NULL,
	Phone				Char(12)			NOT NULL,
	EmailAddress		Varchar(100)		NULL,
	CONSTRAINT 			CUSTOMER_PK 		PRIMARY KEY(CustomerID)
	);
/**   EMPLOYEE   **********************/
CREATE  TABLE EMPLOYEE(
	EmployeeID			Int					NOT NULL IDENTITY(1, 1),
	LastName			Char(25)			NOT NULL,
	FirstName			Char(25)			NOT NULL,
	Phone				Char(12)			NOT NULL,
	EmailAddress		Varchar(100)		NULL,
	CONSTRAINT 			EMPLOYEE_PK 		PRIMARY KEY(EmployeeID)
);	
/**   VENDOR   **********************/
CREATE  TABLE VENDOR(
	VendorID			Int					NOT NULL IDENTITY(1, 1),
	CompanyName			Char(50)			NULL,
	ContactLastName		Char(25)			NOT NULL,
	ContactFirstName	Char(25)			NOT NULL,
	[Address]			Char(35)			NULL,
	City				Char(35)			NULL,
	[State]				Char(2)				NULL,
	ZIP					Char(10)			NULL,
	Phone				Char(12)			NOT NULL,
	Fax					Char(12)			NULL,
	EmailAddress		Varchar(100)		NULL,
	CONSTRAINT 			VENDOR_PK 			PRIMARY KEY(VendorID)
	);
/**   ITEM   **********************/

CREATE  TABLE ITEM(
	ItemID				Int	 				NOT NULL IDENTITY(1,1),
	ItemDescription		Varchar(255)		NOT NULL,
	PurchaseDate		Date				NOT NULL,
	ItemCost			Numeric(9,2)		NOT NULL,
	ItemPrice			Numeric(9,2)		NOT NULL,
	VendorID			Int					NOT NULL,
	CONSTRAINT 			ITEM_PK				PRIMARY KEY(ItemID),
	CONSTRAINT 			ITEM_VENDOR_FK	FOREIGN KEY (VendorID)
							REFERENCES VENDOR(VendorID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
	);

/**   SALE   **********************/

CREATE  TABLE SALE(
    SaleID				Int					NOT NULL IDENTITY (1, 1),
	CustomerID			Int	 				NOT NULL,
	EmployeeID			Int	 				NOT NULL,
	SaleDate			Date				NOT NULL,
	SubTotal			Numeric(15,2)		NULL,
	Tax					Numeric(15,2)		NULL,
	Total				Numeric(15,2)		NULL,
    CONSTRAINT 			SALE_PK 			PRIMARY KEY (SaleID),
	CONSTRAINT 			SALE_CUSTOMER_FK	FOREIGN KEY (CustomerID)
							REFERENCES Customer(CustomerID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
	CONSTRAINT 			SALE_EMPLOYEE_FK	FOREIGN KEY (EmployeeID)
							REFERENCES EMPLOYEE(EmployeeID)
								ON UPDATE NO ACTION
								ON DELETE CASCADE
	);

/**   SALE_ITEM   *********************/

CREATE  TABLE SALE_ITEM(
	SaleID				Int					NOT NULL,
	SaleItemID			Int					NOT NULL,
	ItemID				Int	 				NOT NULL,
	ItemPrice			Numeric(9,2)		NOT NULL,
    CONSTRAINT 			SALE_ITEM_PK 		PRIMARY KEY (SaleID, SaleItemID),
	CONSTRAINT 			SALE_ITEM_SALE_FK FOREIGN KEY (SaleID)
							REFERENCES SALE(SaleID)
 								ON UPDATE NO ACTION
 								ON DELETE CASCADE,
 	CONSTRAINT 			SALE_ITEM_ITEM_FK FOREIGN KEY (ItemID)
 							REFERENCES ITEM(ItemID)
 								ON UPDATE NO ACTION
 								ON DELETE NO ACTION
    );

/****************************/