--Script para criar usuário de suporte
drop user SUPORTE_01 cascade;
create user SUPORTE_01
  identified by "12qwaszx"
  default tablespace USERS
  temporary tablespace TEMP
  profile DEFAULT;
-- Grant/Revoke role privileges 
grant connect to SUPORTE_01;
-- Grant/Revoke system privileges 
grant unlimited tablespace to SUPORTE_01;
grant select_suporte to SUPORTE_01;