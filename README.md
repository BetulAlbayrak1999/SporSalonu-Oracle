# sql_project4
### Projenin amacı: bir spor salonun dogru bir sekilde faturalari cikartmaktir.
##### projede kurulan tablolar sunlar:
1-customer table      
2- coach table      
3- location table
4- invoice table    
5- sport table        
6- customer-sport table 
7- promotion table       
8- log table               
9- LOG_DETAILS table
10-coach details table  
11-customer details table 
12- customer-sport details table 
13-invoice details table 
14- REFUND_INVOICE table

###### Açıklamalar: 
 Customer tablosu: musterinin verileri kaydetmek icin kullanilmaktadir.
 Customer details tablosu: musterinin  ayrintili bir sekilde bilgileri icermektedir.
 Coach tablosu: spor hocalarin verilerini kaydetmek icin kullanilmaktadir.
 coach details tablosu: spor hocalarin hakkinda ayrintili bilgiler icermektedir.
 Location tablosu: hem musteri hem de spor hocalarinin adres bilgilerini kaydetmek icin kullanilmaktadir.
 Promotion tablosu : musterilerin farkli ozelliklerine gore indirim bilgilerini kaydetmek icin kullanilan bir tablodur.
 Sport tablsu : spor salonundaki var olan sporlarin verilerini kaydetmek icin kullanilmaktadir.
 Customer-sport tablsu ise musterinin hangi spora kayit yaptigini ve bu isleme gerekli verileri kaydetmek icin kurulan bir tablodur.
 Customer-sport details tablosu: Customer-sport tablsunun bilgileri ayrintili bir sekilde icermektedir.
 log tablosu: sistemde her yapilan islemin tarihini ve islem ne oldugunu bu tabloda kaydedilmektedir.
 log details tablosu: yapilan islemin hakkinda acik bir sekilde ayrintili bilgiler icermektedir.
 Charge tablosu: spor salounundaki sporlarin farkli surelere gore ucretleri icermektedir.
 invoice tablosu ise cikan faturanin verileri icermektedir.
 invoice details tablosu: musterinin faturasi hakkinda ayrintili bir sekilde veriler icermektedir.
 refund invoice tablosu: bu tablo ise iptal edilen kaytlari ve iade edilen paralari hakkinda bilgi icermektedir.
 projede iki tane package var:
 1- general sport package: bu package'de ilk once her tablonun verilerini getirmek icin bir function olusturdum ve bu tur fonksiyonlarin adlari, table_name_data diye adlandirdim.
 ondan sonra her tabloya yeni veri kaydetmek icin her tablo icin  bir procedure olusturdum ve bu tur procedure'lerin adlari, table_name_enter diye adlandirdim.
 ondan sonra islemleri guzel bir sekilde islenmek icin bazi fonksiyonlar olusturdum:
 - FIND_PROMOTION diye bir fonksiyon olusturdum ve bu fonksiyon musteriye uygun olan promotion'i bulmak icin olusturuldu.
 - eger promotion degistirilmisse guncelleme yapmak icin UPDATE_PROMOTION fonksiyonu olusturdum.
 - faturayi hesaplamak icin COMPUTE_INVOICE fonksiyonu olusturdum ve bu fonksiyon faturayi dogru bir sekilde hesaplamak icin gerek islemleri yapmaktadir.
 - ayrica faturayi ayrintili bir sekilde hesaplamak icin COMPUTE_INVOICE_DETAILS fonksiyonu olusturdum.
 - ve bununla beraber CHECK_LAST_CHARGE_DATE procedure'i olusturdum, ve bunun gorevi ise odeme tarihi gecti olan faturalari tespit etmektir.
 - her ihtimali karsi diye COMPUTE_REFUND_INVOICE fonksiyonu da olusturdum ve fonksiyon iptal edilen musterilerin kaytlarini icin kullanilmaktadir. kaydinin iptal tarihi alarak 
   musteriye ne kadar para iade etmek gerektigini hesaplamaktadir.
 2- Error package: bu package'de ise sistemde olusabilen exception'leri kaydetmektedir.
 
 trigger de kullanildi bu projede. details tablosunda verileri, asil tabloda olmadan kaydetmemek icin triggerleri kullanilmaktadir.
 yani trigger detail tablosuna girmeden once asil tablosu kontrol ediyor eger ayni key'e bir kayt bulunmazsa detail tabosuna girmesine izin vermiyor.
 
 ###### projeyi test etmek icin test kodu da vardir.
 
