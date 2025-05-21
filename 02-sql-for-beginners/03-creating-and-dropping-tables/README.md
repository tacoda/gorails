# Creating and Dropping Tables

```sh
# psql -U ianjohnson -d storefront -c 'SELECT * FROM mytable'
psql -U ianjohnson -d storefront -f create_table.sql
psql -U ianjohnson -d storefront -f drop_table.sql
```

```sh
psql postgres -U ianjohnson
```

```sql
\l
\c storefront;
\dt
```
