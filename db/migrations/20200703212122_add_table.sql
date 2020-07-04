-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE myschema.staff
(
  staff_id   SERIAL PRIMARY KEY,
  first_name VARCHAR(45)  NOT NULL,
  last_name  VARCHAR(45)  NOT NULL,
  email      VARCHAR(100) NOT NULL UNIQUE
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE myschema.staff;
