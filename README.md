# Database Design and Web Application for SQL Query Operations

## Project Overview
In this project, I designed a comprehensive database from scratch, optimized it for performance, and developed a user-friendly web application where users can input SQL queries and retrieve data from the database. The solution involved several stages, from database design and optimization to developing an API and front-end interface for seamless user interaction.

### For in-depth details, please refer to the [full report](Report.pdf).

## Steps Taken

### 1. **Database Design**
- **Entity-Relationship Diagram (ERD):** Created an ER diagram for the entities involved, outlining the relationships between them.
- **Relational Model Conversion:** Converted the ER diagram into a relational model, ensuring that all entities and relationships were captured accurately in table format.
- **Normalization:** The database was normalized to achieve **Boyce-Codd Normal Form (BCNF)**, ensuring data integrity and reducing redundancy.

### 2. **Database Creation in PostgreSQL**
- **Table Creation:** Designed and created tables in PostgreSQL based on the relational model.
- **Data Population:** Populated the tables with thousands of records to simulate a real-world scenario and ensure the robustness of queries.

### 3. **SQL Query Operations**
- **Basic SQL Operations:** Performed various SQL query operations, including `SELECT`, `INSERT`, `UPDATE`, and `DELETE`, to manipulate and retrieve data.
- **Performance Monitoring:** Measured the response times of queries to assess the efficiency of the database.

### 4. **Query Optimization**
- **Indexing:** Added indexes to frequently queried columns to speed up data retrieval.
- **Query Optimization:** Optimized complex SQL queries for faster access and reduced response times, especially for large datasets.
  
### 5. **Advanced SQL Operations**
- **Join Operations:** Performed multiple `JOIN` operations across various tables to fetch related data, ensuring that the database design supported complex queries.
- **Nested Queries:** Used subqueries and other advanced SQL techniques to handle more complex data retrieval scenarios.

### 6. **API Development**
- **Django API:** Developed a RESTful API using Django to allow the web application to interact with the database. The API supports various query operations and facilitates data retrieval.
  
### 7. **Web Application Development**
- **JavaScript Frontend:** Created a web interface where users can input SQL queries in a user-friendly UI. The frontend is built using JavaScript, providing a seamless experience.
- **SQL Query Execution:** The application sends the user-submitted SQL query to the Django API, which retrieves the data from the database and returns it to be displayed on the frontend.

### 8. **Performance Optimization**
- **Response Time Monitoring:** Constantly monitored and noted response times to identify performance bottlenecks and optimize queries and the database schema.
- **Index Management:** Carefully selected columns for indexing to strike a balance between read performance and write efficiency.

## Technologies Used
- **Database:** PostgreSQL
- **Backend:** Django (for API development)
- **Frontend:** JavaScript (for web UI)
- **SQL:** Used advanced SQL queries including `JOIN`, subqueries, and optimization techniques.
  
## Future Improvements
- **Scalability:** Enhance the database for handling larger datasets and more complex queries.
- **User Authentication:** Implement user authentication for restricted access to certain features.
- **Data Visualization:** Add data visualization features to display results in charts or graphs for easier interpretation.

## Conclusion
This project provided an end-to-end solution, from database design and optimization to building a web interface for dynamic SQL query execution. It not only strengthened my understanding of relational databases and query optimization but also allowed me to gain experience in full-stack development by combining database management with API and frontend development.

