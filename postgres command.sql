GRANT USAGE ON SCHEMA schema_name TO user_name;
GRANT SELECT ON ALL TABLES IN SCHEMA schema_name TO user_name;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA schema_name TO user_name;

REVOKE SELECT ON table_name FROM user_name;

REVOKE USAGE ON SCHEMA schema_name FROM user_name;
