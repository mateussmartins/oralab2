begin
    dbms_redact.alter_policy (
        object_schema       => 'SISVENDA',
        object_name         => 'CLIENTE',        
        policy_name         => 'SEG_SISVENDA_0724b',
        action              => DBMS_REDACT.ADD_COLUMN,
        column_name         => 'CPF',
        function_type       => DBMS_REDACT.PARTIAL,
	function_parameters => 'vvvvvvvvvvv,vvvvvvvvvvv,#,1,8',
	expression  => 'SYS_CONTEXT(''USERENV'',''MODULE'') != ''JDBC ThinClient'' AND SYS_CONTEXT(''SYS_SESSION_ROLES'',''REDACTION_USERS'') =''FALSE''',
	regexp_match_parameter => '',
   	policy_description => 'CPF/CNPJ/RG',
   	column_description => 'MATEUS.MARTINS-CARVING-MATEUS.MARTINS-CARVING' );
end;
/
begin 
DBMS_REDACT.add_POLICY (
   object_schema => 'SISVENDA',
   object_name => 'FORNECEDOR',
   policy_name => 'SEG_SISVENDA_72583',
   column_name => 'CNPJ',
   function_type => DBMS_REDACT.PARTIAL,
   function_parameters => 'vvvvvvvvvvv,vvvvvvvvvvv,#,1,8',
   regexp_pattern => '',
   regexp_replace_string => '',
   regexp_position => '0',
   regexp_occurrence => '0',
   expression  => 'SYS_CONTEXT(''USERENV'',''MODULE'') != ''JDBC ThinClient'' AND SYS_CONTEXT(''SYS_SESSION_ROLES'',''REDACTION_USERS'') =''FALSE''',
   regexp_match_parameter => '',
   policy_description => 'CPF/CNPJ/RG',
   column_description => 'MATEUS.MARTINS-CARVING-MATEUS.MARTINS-CARVING' );
end;
/
