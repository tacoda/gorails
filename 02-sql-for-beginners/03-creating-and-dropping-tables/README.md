# Creating and Dropping Tables

```sh
# psql -U ianjohnson -d storefront -c 'SELECT * FROM mytable'
psql -U ianjohnson -d storefront -f create_and_drop_tables.sql
```

```sql
\l
\c storefront;
\dt
```
