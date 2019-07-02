# SQL Homework Answers

1) Return ALL the data in the 'movies' table.

```sql
SELECT * FROM movies;
```

2) Return ONLY the name column from the 'people' table

```sql
SELECT name FROM people;
```

3) Oops! Someone at CodeClan spelled James' name wrong! Change it to reflect the proper spelling (change 'Jasmse Cox' to 'James Cox').

```sql
UPDATE people SET name = 'James Cox' WHERE id = 3;
```

4) Return ONLY your name from the 'people' table.

```sql
SELECT name FROM people WHERE id = 1;
```

5) The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

```sql
DELETE FROM movies WHERE title = 'Batman Begins';
```

6) Create a new entry in the 'people' table with the name of one of the instructors.

```sql
INSERT INTO people (name) VALUES ('Siân RD');
```

7) Craig Morton, has decided to hijack our movie evening, Remove him from the table of people

```sql
DELETE FROM people WHERE name = 'Craig Morton';
```

8) Somehow the list of people includes two people named 'Andrew'. Change these entries to the proper names (Jeff 4 and Jeff 5)

```sql
UPDATE people SET name = 'Jeff 4' WHERE id = 10;
UPDATE people SET name = 'Jeff 5' WHERE id = 11;
```

9) The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

```sql
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');
```

10) The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

```sql
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';
```

## Extension

1) Research how to delete multiple entries from your table in a single command.

```sql
DELETE FROM table WHERE name='' OR name='';
```
