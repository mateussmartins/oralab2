--Script para conceder grants para o  role de consulta
grant select on SISVENDA.CLIENTE to select_suporte;
grant select on SISVENDA.PRODUTO to select_suporte;
grant select on SISVENDA.TRANSACAOONLINE to select_suporte;
grant select on SISVENDA.TRANSACAECOMMERCE to select_suporte;
grant select on SISVENDA.FORNECEDOR to select_suporte;
grant select on SISVENDA.CLIENTE to suporte_01;
grant select on SISVENDA.PRODUTO to suporte_01;
grant select on SISVENDA.TRANSACAOONLINE to suporte_01;
grant select on SISVENDA.TRANSACAECOMMERCE to suporte_01;
grant select on SISVENDA.FORNECEDOR to suporte_01;