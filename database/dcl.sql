-- [DONE] TODO: Create roles and set permissions [Estavillo]
CREATE ROLE viewer;
CREATE ROLE editor;
CREATE ROLE administrator;

GRANT SELECT ON * TO viewer;
GRANT SELECT, INSERT, UPDATE ON * TO editor;
GRANT ALL PRIVILEGES ON * TO administrator;