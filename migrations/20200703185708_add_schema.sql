
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE SCHEMA myschema;


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP SCHEMA myschema;
