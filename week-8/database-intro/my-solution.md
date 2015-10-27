**What are databases for?**

Databases are a system of storing large amounts of information.  They store information in tables, which can be retrieved using SQL, or incorporated into an application using PHP, Ruby, or another back-end programming languages.

**What is a one-to-many relationship?**

A one-to-many relationship is an instance where one identifier applies to many different pieces of data.  For example, a restaurant menu might have three different categories—breakfast, lunch, and dinner, with many items in each category.  This is would be a good situation for having multiple tables--one that lists the different meals, and one that refers to the meals table by the appropriate id.  

**What is a primary key?  What is a foreign key?  How can you determine which is which?**

A primary key is the number that is associated with each item in the database.  Data is typically sorted by this primary key, unless it is ordered by a different parameter.  A foreign key is a key that refers to another table in the database.  While primary keys have to be unique to each item in the table, multiple pieces of data may share the same foreign key.  

**How can you select information out of a SQL database?  What are some general guidelines for that?**

It is typically more efficient to select information by first indicating the column, and then any additional parameters.  For example, you can select all first and last names from a contact information database with this syntax:

```sql
SELECT first_name, last_name
FROM contact_info;
```

You could display the whole table with this syntax:

```sql
SELECT *
FROM contact_info;
```

You can narrow down the results using a where statement such as:

```sql
SELECT first_name, last_name
FROM contact_info
WHERE age > 21;
```

In general, you want to be as specific as possible, using keywords like WHEN, AND, OR, or LIKE when searching for information, especially in a very large database.