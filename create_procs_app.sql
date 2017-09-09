create or replace procedure sisvenda.proc_venda(
p_id IN transacaoonline.id%TYPE,
P_codcliente IN transacaoonline.codcliente%TYPE,
p_produto IN transacaoonline.produto%TYPE,
p_tipovenda IN transacaoonline.tipovenda%TYPE,
p_nrccredito IN transacaoonline.nrccredito%TYPE)
is
begin
insert into sisvenda.transacaoonline(id,codcliente,produto,tipovenda,nrccredito)
values (p_id,p_codcliente,p_produto,p_tipovenda,p_nrccredito);
commit;
end;
/
create or replace procedure sisvenda.cad_cliente(
p_nome IN cliente.nome%TYPE,
P_codcliente IN cliente.codcliente%TYPE,
p_endereco IN cliente.endereco%TYPE,
p_salario IN cliente.salario%TYPE,
p_cpf IN cliente.cpf%TYPE,
p_nrccredito IN cliente.nrccredito%TYPE
)
is
begin
insert into sisvenda.cliente(nome,codcliente,endereco,salario,cpf,nrccredito)
values (p_nome,p_codcliente,p_endereco,p_salario,p_cpf,p_nrccredito);
commit;
end;
/
create or replace procedure sisvenda.del_cliente(
p_nome IN cliente.nome%TYPE,
P_codcliente IN cliente.codcliente%TYPE,
p_endereco IN cliente.endereco%TYPE,
p_salario IN cliente.salario%TYPE,
p_cpf IN cliente.cpf%TYPE,
p_nrccredito IN cliente.nrccredito%TYPE
)
is
begin
delete from sisvenda.cliente where nome=p_nome and cpf=p_cpf;
commit;
end;

