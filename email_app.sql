begin
    dbms_redact.alter_policy (
        object_schema       => 'SISVENDA',
        object_name         => 'CLIENTE',        
        policy_name         => 'SEG_SISVENDA_0724b',
        action              => DBMS_REDACT.ADD_COLUMN,
        column_name         => 'EMAIL',
        function_type       => DBMS_REDACT.PARTIAL,
        function_parameters => 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv,#,1,14',	
        expression  => 'SYS_CONTEXT(''USERENV'',''MODULE'') != ''JDBC ThinClient'' AND SYS_CONTEXT(''SYS_SESSION_ROLES'',''REDACTION_USERS'') =''FALSE''',
	regexp_match_parameter => '',
   	policy_description => 'EMAIL',
   	column_description => 'MATEUS.MARTINS-CARVING-MATEUS.MARTINS-CARVING' );
end;
/
