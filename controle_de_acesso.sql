create table log ( 
    Action_DaTe date
    , Pvs_name varchar2(15)
    , PRIVILEGE varchar2(30)
    , OWNER varchar(20)
    , OBJECT_NAME varchar2(30)
    , Username varchar2(30)
    , login_user varchar2(20)
    , IP_address varchar2(15)
);


create or replace trigger gr_trigger after grant or revoke on database
  declare
    priv  dbms_standard.ora_name_list_t;
    who   dbms_standard.ora_name_list_t;
    npriv pls_integer;
    nwho  pls_integer;
  begin
    npriv := ora_privilege_list(priv);
    if (ora_sysevent = 'GRANT') then
      nwho := ora_grantee(who);
    else
      nwho := ora_revokee(who);
    end if;
    for i in 1..npriv
    loop
      for j in 1..nwho
      loop
        insert into log values
          (
            systimestamp,
            ora_sysevent,
            priv(i),
            ora_dict_obj_owner,
            ora_dict_obj_name,
            who(j),
            ora_login_user,
            (NVL(ora_client_ip_address, 'N/A'))
          );
      end loop;
    end loop;
  end;
/