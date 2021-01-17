CREATE OR REPLACE PACKAGE GENERAL_SPORT
AS
    FUNCTION CUSTOMER_DATA(P_CUSTOMER_ID NUMBER)
    RETURN CUSTOMER % ROWTYPE;
    
    FUNCTION COACH_DATA(P_COACH_ID NUMBER)
    RETURN COACH % ROWTYPE;
    
    FUNCTION CUSTOMER_DETAILS_DATA(P_CUSTOMER_CODE VARCHAR2)
    RETURN CUSTOMER_DETAILS % ROWTYPE;
    
    FUNCTION COACH_DETAILS_DATA(P_COACH_CODE VARCHAR2)
    RETURN COACH_DETAILS % ROWTYPE;    
    
    FUNCTION SPORT_DATA(P_SPORT_ID NUMBER)
    RETURN SPORT % ROWTYPE;
   
    FUNCTION LOCATION_DATA(P_LOCATION_ID NUMBER)
    RETURN LOCATION % ROWTYPE; 
    
    FUNCTION PROMOTION_DATA(P_PROMOTION_ID NUMBER)
    RETURN PROMOTION % ROWTYPE;   
    
    FUNCTION CHARGE_DATA(P_SPORT_ID NUMBER)
    RETURN CHARGE % ROWTYPE;   
    
    FUNCTION CUSTOMER_SPORT_DATA(P_CUSTOMER_SPORT_ID NUMBER)
    RETURN CUSTOMER_SPORT % ROWTYPE;   
    
    FUNCTION CUSTOMER_SPORT_DETAILS_DATA(P_CUSTOMER_SPORT_CODE VARCHAR2)
    RETURN CUSTOMER_SPORT_DETAILS % ROWTYPE;   
    
    FUNCTION INVOICE_DETAILS_DATA(P_INVOICE_DETAILS_CODE VARCHAR2)
    RETURN INVOICE_DETAILS % ROWTYPE;   
    
    FUNCTION INVOICE_DATA(P_INVOICE_ID NUMBER)
    RETURN INVOICE % ROWTYPE; 
    
    PROCEDURE CUSTOMER_ENTER(P_CUSTOMER_ID    NUMBER,
                             P_CUSTOMER_NAME  VARCHAR2,
                             P_CUSTOMER_PHONE VARCHAR2,
                             P_IF_INVALID     VARCHAR2
                             );
                             
    PROCEDURE PROMOTION_ENTER(P_PROMOTION_ID        NUMBER,
                              P_PROMOTION_TYPE      VARCHAR2,
                              P_PROMOTION_CODE      VARCHAR2,
                              P_DISCOUNT_PERCENTAGE NUMBER,
                              P_IF_INVALID          VARCHAR2
                             );
                             
    PROCEDURE CUSTOMER_DETAILS_ENTER(P_CUSTOMER_CODE     VARCHAR2,
                                     P_BIRTH_DAY         DATE,
                                     P_GENDER            VARCHAR2,
                                     P_CREATING_DATE     DATE,
                                     P_LOCATION_ID       NUMBER,
                                     P_CUSTOMER_PRO_CODE VARCHAR2
                                     );
                                     
    PROCEDURE COACH_ENTER(P_COACH_ID   NUMBER,
                          P_COACH_NAME VARCHAR2,
                          P_IF_INVALID VARCHAR2
                          );
                          
    PROCEDURE COACH_DETAILS_ENTER(P_COACH_CODE    VARCHAR2,
                                  P_STARTING_HOUR NUMBER,
                                  P_ENDING_HOUR   NUMBER,
                                  P_SPORT_ID      NUMBER
                                  ); 
                                  
    PROCEDURE CHARGE_ENTER(P_CHARGE_ID    NUMBER,
                           P_SPORT_ID     NUMBER,
                           P_CAHRGE_YEAR  NUMBER,
                           P_CHARGE_MONTH NUMBER,
                           P_IF_INVALID   VARCHAR2
                           );   
                           
    PROCEDURE CUSTOMER_SPORT_ENTER(P_CUSTOMER_SPORT_ID    NUMBER,
                                   P_CUSTOMER_NAME        VARCHAR2,
                                   P_SPORT_NAME_ONE       VARCHAR2,
                                   P_COACH_NAME_ONE       VARCHAR2,
                                   P_SPORT_NAME_TWO       VARCHAR2,
                                   P_COACH_NAME_TWO       VARCHAR2,
                                   P_IF_INVALID           VARCHAR2
                                   );
                                   
    PROCEDURE CUSTOMER_SPORT_DETAILS_ENTER(P_CUSTOMER_SPORT_CODE   VARCHAR2,
                                           P_CUSTOMER_ID           NUMBER, 
                                           P_STARTING_DATE_ONE     DATE,
                                           P_ENDING_DATE_ONE       DATE,
                                           P_STARTING_DATE_TWO     DATE,
                                           P_ENDING_DATE_TWO       DATE ,
                                           P_SPORT_HOUR_ONE        NUMBER,
                                           P_SPORT_HOUR_TWO        NUMBER,
                                           P_SPORT_ID_ONE          NUMBER,
                                           P_SPORT_ID_TWO          NUMBER,
                                           P_COACH_ID_ONE          NUMBER,
                                           P_COACH_ID_TWO          NUMBER,
                                           P_LAST_CHARGE_DATE_ONE  DATE,
                                           P_LAST_CHARGE_DATE_TWO  DATE
                                   ); 
                                   
    PROCEDURE INVOICE_ENTER(P_INVOICE_ID                NUMBER, 
                            P_CUSTOMER_NAME             VARCHAR2,
                            P_SPORT_NAME_ONE            VARCHAR2, 
                            P_SPORT_NAME_TWO            VARCHAR2,
                            P_MONTH_COUNT_ONE           NUMBER,
                            P_MONTH_COUNT_TWO           NUMBER,
                            P_TOTAL_COST                NUMBER,
                            P_INVOICE_DATE              DATE,
                            P_TOTAL_COST_WITH_DISCOUNT  NUMBER
                            ); 
                                           
    PROCEDURE INVOICE_DETAILS_ENTER(P_INVOICE_CODE              VARCHAR2,  
                                    P_BANK_ACCOUNT              VARCHAR2,
                                    P_COST_SPORT_ONE            NUMBER,
                                    P_COST_SPORT_TWO            NUMBER,
                                    P_PROMO_CREATING_DATE       DATE,
                                    P_PROMO_STARTING_DATE       DATE,
                                    P_PROMO_ENDING_DATE         DATE, 
                                    P_EXPLAIN_INVOICE           VARCHAR2,
                                    P_PROMO_DISCOUNT_PERCENTAGE NUMBER);
                                    
                                
    PROCEDURE LOCATION_ENTER(P_LOCATION_ID   NUMBER,
                             P_LOCATION_NAME VARCHAR2,
                             P_IF_INVALID    VARCHAR2
                             );   
     
    PROCEDURE SPORT_ENTER   (P_SPORT_ID   NUMBER,
                             P_SPORT_NAME VARCHAR2,
                             P_IF_INVALID VARCHAR2
                             );     
                             
    FUNCTION FIND_PROMOTION (P_CUSTOMER_ID NUMBER)
    RETURN PROMOTION % ROWTYPE;
                            
    
    PROCEDURE UPDATE_PROMOTION (P_CUSTOMER_ID NUMBER);
    
    FUNCTION COMPUTE_INVOICE (P_CUSTOMER_SPORT_ID NUMBER, P_CUSTOMER_ID NUMBER)
    RETURN INVOICE % ROWTYPE;
    
    FUNCTION COMPUTE_INVOICE_DETAILS (P_INVOICE_ID NUMBER, P_CUSTOMER_SPORT_ID NUMBER, P_CUSTOMER_ID NUMBER)
    RETURN INVOICE_DETAILS % ROWTYPE;
    
    PROCEDURE CHECK_LAST_CHARGE_DATE;
    
    PROCEDURE UPDATE_SEQ_OR_ENTER (P_CUSTOMER_SPORT_ID    NUMBER,
                                   P_CUSTOMER_NAME        VARCHAR2,
                                   P_SPORT_NAME_ONE       VARCHAR2,
                                   P_COACH_NAME_ONE       VARCHAR2,
                                   P_SPORT_NAME_TWO       VARCHAR2,
                                   P_COACH_NAME_TWO       VARCHAR2,
                                   P_IF_INVALID           VARCHAR2 );
                                   
     FUNCTION COMPUTE_REFUND_INVOICE(P_INVOICE_ID              NUMBER,
                                     P_CANCEL_REGISTRATION_ONE DATE,
                                     P_CANCEL_REGISTRATION_TWO DATE)
    RETURN REFUND_INVOICE % ROWTYPE;
    
END;
