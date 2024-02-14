# SQL_project_Hotel
Design and develop Database by using SQL

1.	Background

The goal is to improve Sunny Spot's website by implementing a database for real-time cabin and promotion information. This enhances user experience and staff efficiency.
The current website has:
•	Static promotional PDF
Promotional information is only available as PDF documents.
•	Cabin details only via enquiry forms
Website visitors can only get details on cabins such as inclusions and cost if they make an enquiry through the website’s visitor enquiry form.
•	Outdated appearance
Deliver an unprofessional looing website.
The client wants:
•	A modern, dynamic website
Dynamically display a cabins section.
•	Real-time cabin availability
Directly shows the most up to date information about all cabin types including details of inclusions and costs.
•	Integrated, updated promos
To display their promotion information that doesn’t involve using downloadable PDFs.
•	Less manual enquiry handling.
Website visitors to see cabin information without having to complete a website enquiry form.
A backend database solution will seamlessly store and display information to achieve these goals and solve the business problems identified.

 
2.	Requirements

Business Problems:
•	Inaccessible cabin information
•	Static promotional PDFs
•	Unprofessional website appearance
•	Outdated display methods
•	Manual handling of enquiries
Technical Requirements:
•	Dynamic, real-time cabin information
•	Database for cabin details
•	Promotion tracking
•	Website integration
•	Improve user experience.
•	Reduce staff workload.

3.	Issues or Assumptions

Issues:
•	Staff resistance to change.
•	Ensuring data security.
Assumptions:
•	Stakeholder engagement.
•	Technical resources available.

4.	Stakeholders

Key Stakeholders:
•	Jack Jones (Client)
•	Website Development Team
•	Database Design Team
•	Website Visitors
•	Sunny Spot Staff
Involvement:
•	Jack: Provides vision and direction
•	Dev Team: Coding
•	Database Team: Design
•	Visitors: Use website
•	Staff: Respond to enquiries
5.	Tools and Technologies
Database Design Process:
•	Database Management System (DBMS)
•	Entity-Relationship Diagram (ERD) tools
Database Creation:
•	MySQL 

6.	Data
Relevant data to be incorporated into the database:
•	Cabin data:Cabin_ID(PK), Type, Description, Sleeps, Price per night, Price per week
•	Promotion data:Promotion_ID(PK), Cabin type, Discount percentage, Valid date range
One-to-Many Relationship:
1.	One Cabin can have multiple Promotions.
2.	One Promotion applies to one Cabin

7.	Criteria for Success
Database Design Success:
•	User-friendly interface for staff and visitors.
•	Efficient storage and retrieval of cabin information.
•	Integration with the website's front-end seamlessly.

8.	Deliverable
The database design process will result in:
•	A well-structured relational database.
•	Documentation including ERD, schema.
•	Functional database created in MySQL.
