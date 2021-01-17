CREATE TABLE LOCATION 
(
    LOCATION_ID     NUMBER,
    LOCATION_NAME   VARCHAR2(100),
    IF_INVALID      VARCHAR2(50),
    CONSTRAINT PK_LOCATION_ID PRIMARY KEY (LOCATION_ID),
    CONSTRAINT CH_VALID_LOCATION CHECK (IF_INVALID = 'VALID' OR IF_INVALID = 'INVALID')
);