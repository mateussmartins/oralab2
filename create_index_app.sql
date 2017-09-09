alter table SISVENDA.CLIENTE
  add constraint PK_CLIENTE primary key (NOME)
  using index 
  tablespace DATA
  pctfree 10
  initrans 2
  maxtrans 255;
alter table SISVENDA.TRANSACAOONLINE
  add constraint PK_TRANSACAOONLINE primary key (ID)
  using index 
  tablespace DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

create index SISVENDA.IDX01_CODCLIENTE on SISVENDA.TRANSACAOONLINE (CODCLIENTE)
  tablespace DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index SISVENDA.IDX03_TIPOVENDA on SISVENDA.TRANSACAOONLINE (TIPOVENDA)
  tablespace DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
