--Script para criar usuário de aplicação
drop user SISVENDA cascade;
create user SISVENDA
  identified by "12qwaszx"
  default tablespace DATA
  temporary tablespace TEMP
  profile DEFAULT;
-- Grant/Revoke role privileges 
grant connect to SISVENDA;
grant resource to SISVENDA;
-- Grant/Revoke system privileges 
grant unlimited tablespace to SISVENDA;