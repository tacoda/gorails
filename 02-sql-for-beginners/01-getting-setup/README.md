# Getting Setup

1. Install postgresql

MacOS

```sh
brew install postgresql
```

Linux

```sh
apt install postgresql
```

2. Start postgresql

MacOS

```sh
brew services start postgresql
```

Linux

```sh
systemctl start postgresql
```

3. Configure postgres

```sh
psql postgres
```

```sql
CREATE ROLE newUser WITH LOGIN PASSWORD ‘password’;
ALTER ROLE newUser CREATEDB;
\q
```

```sql
psql postgres -U newuser
```

Useful Tools:

- TablePlus
- lazysql
