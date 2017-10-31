begin 
DBMS_REDACT.add_POLICY (
   object_schema => 'SISVENDA',
   object_name => 'CLIENTE',
   policy_name => 'SEG_SISVENDA_0724b',
   column_name => 'NRCCREDITO',
   function_type => DBMS_REDACT.PARTIAL,
   function_parameters => 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,#,1,15',
   regexp_pattern => '',
   regexp_replace_string => '',
   regexp_position => '0',
   regexp_occurrence => '0',
   expression  => 'SYS_CONTEXT(''USERENV'',''MODULE'') != ''JDBC ThinClient'' AND SYS_CONTEXT(''SYS_SESSION_ROLES'',''REDACTION_USERS'') =''FALSE''',
   regexp_match_parameter => '',
   policy_description => 'CARTAO.CRED',
   column_description => 'MATEUS.MARTINS-CARVING-MATEUS.MARTINS-CARVING' );
end;
/
begin 
DBMS_REDACT.add_POLICY (
   object_schema => 'SISVENDA',
   object_name => 'TRANSACAECOMMERCE',
   policy_name => 'SEG_SISVENDA_0ed04',
   column_name => 'NRCCREDITO',
   function_type => DBMS_REDACT.PARTIAL,
   function_parameters => 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,#,1,15',
   regexp_pattern => '',
   regexp_replace_string => '',
   regexp_position => '0',
   regexp_occurrence => '0',
   expression  => 'SYS_CONTEXT(''USERENV'',''MODULE'') != ''JDBC ThinClient'' AND SYS_CONTEXT(''SYS_SESSION_ROLES'',''REDACTION_USERS'') =''FALSE''',
   regexp_match_parameter => '',
   policy_description => 'CARTAO.CRED',
   column_description => 'MATEUS.MARTINS-CARVING-MATEUS.MARTINS-CARVING' );
end;
/
begin 
DBMS_REDACT.add_POLICY (
   object_schema => 'SISVENDA',
   object_name => 'TRANSACAOONLINE',
   policy_name => 'SEG_SISVENDA_80159',
   column_name => 'NRCCREDITO',
   function_type => DBMS_REDACT.PARTIAL,
   function_parameters => 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,#,1,15',
   regexp_pattern => '',
   regexp_replace_string => '',
   regexp_position => '0',
   regexp_occurrence => '0',
   expression  => 'SYS_CONTEXT(''USERENV'',''MODULE'') != ''JDBC ThinClient'' AND SYS_CONTEXT(''SYS_SESSION_ROLES'',''REDACTION_USERS'') =''FALSE''',
   regexp_match_parameter => '',
   policy_description => 'CARTAO.CRED',
   column_description => 'MATEUS.MARTINS-CARVING-MATEUS.MARTINS-CARVING' );
end;
/
