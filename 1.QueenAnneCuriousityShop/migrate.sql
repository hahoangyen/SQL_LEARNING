/****************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	The Queen Anne Curiousity Shop [QACS_CH02] Database Insert Data				*/
/*																				*/
/*	These are the Microsoft SQL Server 2016/2017 SQL code solutions				*/
/*																				*/
/****************************/

USE QACS
GO

/**   CUSTOMER DATA   *******************/

INSERT INTO CUSTOMER VALUES(
	'Shire', 'Robert',
	'6225 Evanston Ave N', 'Seattle', 'WA', '98103',
	'206-524-2433', 'Robert.Shire@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Goodyear', 'Katherine',
	'7335 11th Ave NE', 'Seattle', 'WA', '98105',
	'206-524-3544', 'Katherine.Goodyear@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Bancroft', 'Chris',
	'12605 NE 6th Street', 'Bellevue', 'WA', '98005',
	'425-635-9788', 'Chris.Bancroft@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Griffith', 'John',
	'335 Aloha Street', 'Seattle', 'WA', '98109',
	'206-524-4655', 'John.Griffith@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Tierney', 'Doris',
	'14510 NE 4th Street', 'Bellevue', 'WA', '98005',
	'425-635-8677', 'Doris.Tierney@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Anderson', 'Donna',
	'1410 Hillcrest Parkway', 'Mt. Vernon', 'WA', '98273',
	'360-538-7566', 'Donna.Anderson@elsewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Svane', 'Jack',
	'3211 42nd Street', 'Seattle', 'WA', '98115',
	'206-524-5766', 'Jack.Svane@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Walsh', 'Denesha',
	'6712 24th Avenue NE', 'Redmond', 'WA', '98053',
	'425-635-7566', 'Denesha.Walsh@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Enquist', 'Craig',
	'534 15th Street', 'Bellingham', 'WA', '98225',
	'360-538-6455', 'Craig.Enquist@elsewhere.com');
INSERT INTO CUSTOMER VALUES(
	'Anderson', 'Rose',
	'6823 17th Ave NE', 'Seattle', 'WA', '98105',
	'206-524-6877', 'Rose.Anderson@elsewhere.com');
/**   EMPLOYEE DATA   *********************/
INSERT INTO EMPLOYEE VALUES(
	'Stuart', 'Anne',
	'206-527-0010', 'Anne.Stuart@QACS.com');
INSERT INTO EMPLOYEE VALUES(
	'Stuart', 'George',
	'206-527-0011', 'George.Stuart@QACS.com');
INSERT INTO EMPLOYEE VALUES(
	'Stuart', 'Mary',
	'206-527-0012', 'Mary.Stuart@QACS.com');
INSERT INTO EMPLOYEE VALUES(
	'Orange', 'William',
	'206-527-0013', 'William.Orange@QACS.com');
INSERT INTO EMPLOYEE VALUES(
	'Grifﬁth', 'John',
	'206-527-0014', 'John.Grifﬁth@QACS.com');
/**   VENDOR DATA   *********************/
INSERT INTO VENDOR VALUES(
	'Linens and Things', 'Huntington','Anne',
	'1515 NW Market Street', 'Seattle', 'WA', '98107',
	'206-325-6755','206-329-9675', 'LAT@business.com');

INSERT INTO VENDOR VALUES(
	'European Specialties', 'Tadema','Ken',
	'6123 15th Avenue NW', 'Seattle', 'WA', '98107',
	'206-325-7866','206-329-9786', 'ES@business.com');
INSERT INTO VENDOR VALUES(
	'Lamps and Lighting', 'Swanson','Sally',
	'506 Prospect Street', 'Seattle', 'WA', '98109',
	'206-325-8977','206-329-9897', 'LAL@business.com');

INSERT INTO VENDOR(ContactLastName, ContactFirstName,
[Address], City, [State], ZIP, Phone, EmailAddress)
 VALUES(
	'Lee','Andrew',
	'1102 3rd Street', 'Kirkland', 'WA', '98033',
	'425-746-5433', 'Andrew.Lee@somewhere.com');

INSERT INTO VENDOR(ContactLastName, ContactFirstName,
[Address], City, [State], ZIP, Phone, EmailAddress)
 VALUES(
	'Hamison','Denise',
	'533 10th Avenue', 'Kirkland', 'WA', '98033',
	'425-746-4322', 'Denise.Hamison@somewhere.com');

INSERT INTO VENDOR VALUES(
	'New York Brokerage', 'Smith','Mark',
	'621 Roy Street', 'Seattle', 'WA', '98109',
	'206-325-9088','206-329-9908', 'NYB@business.com');

INSERT INTO VENDOR(ContactLastName, ContactFirstName,
[Address], City, [State], ZIP, Phone, EmailAddress)
 VALUES(
	'Walsh','Denesha',
	'6712 24th Avenue NE', 'Redmond', 'WA', '98053',
	'425-635-7566', 'Denesha.Walsh@somewhere.com');

INSERT INTO VENDOR(ContactLastName, ContactFirstName,
[Address], City, [State], ZIP, Phone,Fax, EmailAddress)
 VALUES(
	'Bancroft','Chris',
	'12605 NE 6th Street', 'Bellevue', 'WA', '98005',
	'425-635-9788','425-639-9978', 'Chris.Bancroft@somewhere.com');

INSERT INTO VENDOR VALUES(
	'Specialty Antiques', 'Nelson','Fred',
	'2512 Lucky Street', 'San Francisco', 'CA', '94110',
	'415-422-2121','415-423-5212', 'SA@business.com');

INSERT INTO VENDOR VALUES(
	'General Antiques', 'Gamer','Patty',
	'2515 Lucky Street', 'San Francisco', 'CA', '94110',
	'415-422-3232','415-429-9323', 'GA@business.com');


/**   ITEM DATA   *********************/

/**   ITEM Table As Used in Chapter02   *************/

INSERT INTO ITEM VALUES(
	'Antique Desk', '07-Nov-16', 1800.00, 3000.00,2);
INSERT INTO ITEM VALUES(
	'Antique Desk Chair', '10-Nov-16', 300.00, 500.00,4);
INSERT INTO ITEM VALUES(
	'Dining Table Linens', '14-Nov-16', 600.00, 1000.00,1);
INSERT INTO ITEM VALUES(
	'Candles', '14-Nov-16', 30.00, 50.00,1);
INSERT INTO ITEM VALUES(
	'Candles', '14-Nov-16', 27.00, 45.00,1);
INSERT INTO ITEM VALUES(
	'Desk Lamp','14-Nov-16', 150.00, 250.00,3);
INSERT INTO ITEM VALUES(
	'Dining Table Linens', '14-Nov-16', 450.00, 750.00,1);
INSERT INTO ITEM VALUES(
	'Book Shelf','21-Nov-16', 150.00, 250.00,5);
INSERT INTO ITEM VALUES(
	'Antique Chair', '21-Nov-16', 750.00, 1250.00,6);
INSERT INTO ITEM VALUES(
	'Antique Chair','21-Nov-16', 1050.00, 1750.00,6);
INSERT INTO ITEM VALUES(
	'Antique Candle Holder', '28-Nov-16', 210.00, 350.00,2);
INSERT INTO ITEM VALUES(
	'Antique Desk', '05-Jan-17', 1920.00, 3200.00,2);
INSERT INTO ITEM VALUES(
	'Antique Desk',  '05-Jan-17', 2100.00, 3500.00,2);
INSERT INTO ITEM VALUES(
	'Antique Desk Chair', '06-Jan-17', 285.00, 475.00,9);
INSERT INTO ITEM VALUES(
	'Antique Desk Chair', '06-Jan-17', 339.00, 565.00,9);
INSERT INTO ITEM VALUES(
	'Desk Lamp', '06-Jan-17', 150.00, 250.00,10);
INSERT INTO ITEM VALUES(
	'Desk Lamp','06-Jan-17', 150.00, 250.00,10);
INSERT INTO ITEM VALUES(
	'Desk Lamp', '06-Jan-17', 144.00, 240.00,3);
INSERT INTO ITEM VALUES(
	'Antique Dining Table','10-Jan-17', 3000.00, 5000.00,7);
INSERT INTO ITEM VALUES(
	'Antique Sideboard','11-Jan-17', 2700.00, 4500.00,8);
INSERT INTO ITEM VALUES(
	'Dining Table Chairs','11-Jan-17', 5100.00, 8500.00,9);
INSERT INTO ITEM VALUES(
	'Dining Table Linens','12-Jan-17', 450.00, 750.00,1);
INSERT INTO ITEM VALUES(
	'Dining Table Linens','12-Jan-17', 480.00, 800.00,1);
INSERT INTO ITEM VALUES(
	'Candles','17-Jan-17', 30.00, 50.00,1);
INSERT INTO ITEM VALUES(
	'Candles','17-Jan-17', 36.00, 60.00,1);

/**   SALE DATA   *********************/
INSERT INTO SALE VALUES(1,1, '14-Dec-16', 3500.00, 290.50, 3790.50); 
INSERT INTO SALE VALUES(2,1, '15-Dec-16', 1000.00, 83.00, 1083.00); 
INSERT INTO SALE VALUES(3,1, '15-Dec-16', 50.00, 4.15, 54.15); 
INSERT INTO SALE VALUES(4,3, '23-Dec-16', 45.00, 3.74, 48.74); 
INSERT INTO SALE VALUES(1,5, '05-Jan-17', 250.00, 20.75, 270.75); 
INSERT INTO SALE VALUES(5,5, '10-Jan-17', 750.00, 62.25, 812.25);
INSERT INTO SALE VALUES(6,4, '12-Jan-17', 250.00, 20.75, 270.75); 
INSERT INTO SALE VALUES(2,1, '15-Jan-17', 3000.00, 249.00, 3249.00);
INSERT INTO SALE VALUES(5,5, '25-Jan-17', 350.00, 29.05, 379.05);
INSERT INTO SALE VALUES(7,1, '04-Feb-17', 14250.00, 1182.75, 15432.75);
INSERT INTO SALE VALUES(8,5, '04-Feb-17', 250.00, 20.75, 270.75);
INSERT INTO SALE VALUES(5,4, '07-Feb-17', 50.00, 4.15, 54.15);
INSERT INTO SALE VALUES(9,2, '07-Feb-17', 4500.00, 373.50, 4873.50);
INSERT INTO SALE VALUES(10,3, '11-Feb-17', 3675.00, 305.03, 3980.03); 
INSERT INTO SALE VALUES(2,2, '11-Feb-17', 800.00, 66.40, 866.40);


/**   SALE_ITEM DATA   ********************/

/**   SALE_ITEM Table As Used in Chapter 02   ***********/

INSERT INTO SALE_ITEM VALUES(1,	1, 1, 3000.00); 
INSERT INTO SALE_ITEM VALUES(1,	2, 2, 500.00); 
INSERT INTO SALE_ITEM VALUES(2,	1, 3, 1000.00); 
INSERT INTO SALE_ITEM VALUES(3,	1, 4, 50.00);
INSERT INTO SALE_ITEM VALUES(4,	1, 5, 45.00); 
INSERT INTO SALE_ITEM VALUES(5,	1, 6, 250.00); 
INSERT INTO SALE_ITEM VALUES(6,	1, 7, 750.00); 
INSERT INTO SALE_ITEM VALUES(7,	1, 8, 250.00); 
INSERT INTO SALE_ITEM VALUES(8,	1, 9, 1250.00); 
INSERT INTO SALE_ITEM VALUES(8,	2, 10, 1750.00); 
INSERT INTO SALE_ITEM VALUES(9,	1, 11, 350.00); 
INSERT INTO SALE_ITEM VALUES(10, 1, 19, 5000.00); 
INSERT INTO SALE_ITEM VALUES(10, 2, 21, 8500.00); 
INSERT INTO SALE_ITEM VALUES(10, 3, 22, 750.00); 
INSERT INTO SALE_ITEM VALUES(11, 1, 17, 250.00); 
INSERT INTO SALE_ITEM VALUES(12, 1, 24, 50.00); 
INSERT INTO SALE_ITEM VALUES(13, 1, 20, 4500.00); 
INSERT INTO SALE_ITEM VALUES(14, 1, 12, 3200.00); 
INSERT INTO SALE_ITEM VALUES(14, 2, 14, 475.00); 
INSERT INTO SALE_ITEM VALUES(15, 1, 23, 800.00); 

/****************************/