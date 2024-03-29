CREATE TABLE CUSTOMER_SPORT
(
    CUSTOMER_SPORT_ID  NUMBER,
    CUSTOMER_NAME      VARCHAR2(100),
    SPORT_NAME_ONE     VARCHAR2(100), --ASIL TABLODA VAR OLGUNU KONTROL ET BILMEM NE ILE
    COACH_NAME_ONE     VARCHAR2(100),
    SPORT_NAME_TWO     VARCHAR2(100) DEFAULT NULL,
    COACH_NAME_TWO     VARCHAR2(100) DEFAULT NULL,
    IF_INVALID         VARCHAR2(30),
    
    CONSTRAINT PK_CUSTOMER_SPORT_ID PRIMARY KEY (CUSTOMER_SPORT_ID),
    CONSTRAINT CH_SPORT_NOT_EQUAL CHECK (SPORT_NAME_ONE <> SPORT_NAME_TWO),
    CONSTRAINT CH_VALID_CUSTOMER_SPORT CHECK (IF_INVALID = 'VALID' OR IF_INVALID = 'INVALID')
);

