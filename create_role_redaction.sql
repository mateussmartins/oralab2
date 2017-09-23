drop role redaction_users;
create role redaction_users;
grant EXEMPT REDACTION POLICY redaction_users;
grant redaction_users to SISVENDA;