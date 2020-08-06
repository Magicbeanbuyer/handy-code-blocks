GRANT USAGE ON SCHEMA schema_name TO role_name;
GRANT ALL PRIVILEGES ON SCHEMA stripe_uk to etl;

GRANT SELECT ON ALL TABLES IN SCHEMA schema_name TO role_name;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA schema_name TO role_name;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA schema_name TO role_name;

REVOKE SELECT ON table_name FROM role_name;

REVOKE USAGE ON SCHEMA schema_name FROM role_name;
