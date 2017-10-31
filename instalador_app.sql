--Script de instalação da estrutura de banco de dados da aplicação
alter system set current_schema=SYSTEM;
@controle_de_acesso.sql
@create_profile_app_user.sql
@create_profile_sup_user.sql
@create_user_app.sql
@create_tabelas_app.sql
@create_role_app.sql
@create_users_suporte.sql
@grants_app.sql
@create_index_app.sql
@create_procs_app.sql
@insere_dados_app.sql
@create_role_redaction.sql
--@instalador_redaction_polices.sql
alter system set current_schema=SYS;
EXEC UTL_RECOMP.recomp_serial('SISVENDA');