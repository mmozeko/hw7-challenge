--transaction
--credit_card
--card_holder
--merchant
--merchant_category

-- Drop Tables

DROP TABLE IF EXISTS transaction CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXIST merchant CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;

-- Create a table of transaction
CREATE TABLE transaction (
  id INT PRIMARY KEY NOT NULL,
  date timestamp without time zone DEFAULT now() NOT NULL,
  amount numeric NOT NULL,
  credit_card_number VARCHAR NOT NULL,
  id_merchant INTEGER NOT NULL,
  FOREIGN KEY (id_merchant) REFERENCES merchant(id_merchant)
);

-- Create a table of credit_card
CREATE TABLE credit_card (
  credit_card_number VARCHAR NOT NULL PRIMARY KEY,
  card_holder_id INTEGER NOT NULL
);

-- Create a card_holder table.
CREATE TABLE card_holder (
card_holder_id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR NOT NULL
);
-- Create a merchant table.
CREATE TABLE merchant (
  id_merchant INTEGER NOT NULL PRIMARY KEY,
  name  VARCHAR NOT NULL,
  merchant_cat_id INTEGER NOT NULL
);

-- Create a table of merchant_category
CREATE TABLE merchant_category (
  merchant_cat_id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR NOT NULL
);
