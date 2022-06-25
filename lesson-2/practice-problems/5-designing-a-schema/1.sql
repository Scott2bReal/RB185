/*
We're going to need to design a database schema that will hold the data for our
todo lists and items. The following tables describe the attributes of these
entities that we'll need to store:

List

    Has a unique name

Todo

    Has a name
    Belongs to a list
    Can be completed, but should default to not being completed

We'll also want each table to have an id column so we can easily identify
specific rows in it.

    Write the SQL statements necessary to create a schema that will hold the
    data for lists and todos as described above. Include any constraints that
    are appropriate.
*/

CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text UNIQUE NOT NULL
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  name text NOT NULL,
  completed boolean
    NOT NULL
    DEFAULT false,
  list_id int
    NOT NULL
    REFERENCES lists (id)
);
