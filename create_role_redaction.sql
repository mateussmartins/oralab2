drop role redaction_users;
create role redaction_users;
grant EXEMPT REDACTION POLICY to redaction_users;
grant redaction_users to SISVENDA;