-- Criando a tabela CATEGORY e montando sua estrutura
CREATE SEQUENCE CATEGORY_SEQ MINVALUE 1 INCREMENT BY 1;
CREATE TABLE CATEGORY
(
  ID   INTEGER PRIMARY KEY,
  NAME VARCHAR(255)
);

-- Criando a tabela PRODUCT e montando sua estrutura
CREATE SEQUENCE PRODUCT_SEQ MINVALUE 1 INCREMENT BY 1;
CREATE TABLE PRODUCT
(
  ID          INTEGER PRIMARY KEY,
  NAME        VARCHAR(255),
  CATEGORY_ID INT,
  FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY (ID)
);
