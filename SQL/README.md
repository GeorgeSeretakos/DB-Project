# MasterChef SQL Database and Queries

In this folder all the sql code is contained, for **table creation and deletion****, table population**, **CRUD operations** and **queries**.

## Files

- **DDL**: Implements the basic logic of the database (table creation, constraint definition, indexes, table deletions).
- **Populate_Basic**: Populates the basic tables of the database, meaning the ones representing entities (meal, tag, recipe, chef etc).
- **Populate_Intermediate**: Populates the intermediate tables of the database, meaning the ones representing relationships (recipe_chef, dhef_national_cuisine etc).
- **Chef_CRUD_Operations**: CRUD operations performed from both chefs and administrators. In every query, the user_id is requested, so that every user has access to his own information
- **Admin_CRUD_Operations**: CRUD operations performed only from administrators. In every query, the user_id is requested as well, so that only the admin can access more general info.
- **Queries**: The queries asked from the exercise. Everyone has access to them.

## Important notice

We have made some assumptions in order to create the database. Make sure to check the Info.txt file before starting looking at our implementation.