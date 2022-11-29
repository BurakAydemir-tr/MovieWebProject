# MovieWebProject Amacı:

Bu projenin amacı Bir Film sitesi oluşturmak. Filmleri çoğunlukla **omdbapi** üzerinden çekip veri tabanına kaydediyoruz. Bu işlemi Web Api üzerinden yapıyoruz.
Veri tabanına kaydettiğimiz filmleri sitemizde görebiliyoruz. Filmlerin isimlerine tıkladığımızda film detay sayfasında filme ait detaylı bilgiye ulaşabiliyoruz.
Yeni film eklemek, silmek ve ya düzenlemek istediğimizde siteye kayıt olmamız gerekiyor. Kayıt işleminden sonra filmler üzerinde gerekli işlemleri gerçekleştirebiliyoruz.

### Veri Tabanı
- Projenini veri tabanı **Sql Script** klasörü içerisindedir.
- Bu script i çalıştırarak veri tabanını kendi Msssql Server'na yükleyebilirsiniz.

### OMDB APİ üzerinden Film Kaydetme
- omdbapi üzerinden film kaydetmek için **WebAPI** projesini çalıştırmanız gerekir.
- Swagger arayüzü üzerinden eklemek istediğiniz filmin adını yazarak filmi veri tabanına kaydedebilirsiniz.
- OMDP APİ üzerinden filmlere Movie Title ile yada ImdbId ile ulaşabiliyorsunuz. Sadece yıla göre film listelemmiyor. Bu sebeple filmleri tek tek eklemek zorundasınız.

### Web Arayüzü
- Web sitesine ulaşmak için **WebMVC** projesini çalıştırmanız gerekir.
- Projeyi çalıştırdığınızda kayıtlı tüm filmler web sayfasına yüklenecektir.
- Filmlerin adına tıklayarak film detay sayfasına gidebilirsiniz.
- Filmler üzerinde ekleme, silme, düzenleme yapmak için kullanıcı girişi yapmanız gerekir.
- Kullanıcı kaydı ve kullanıcı girişi için üst menüdeki **Login/Sign Up** menüsünü kullanabilirsiniz.
- Kullanıcı kaydı yaptıktan sonra sistem sizi Login sayfasına yönelendirir. Login işlemi yaptıktan sonra admin sayfasına yönlendirilirsiniz.
- Filmler üzerindeki tüm işlemleri admin sayfasından yapabilirsiniz.
- Admin sayfasından çıkış için üst menüden Log out ile çıkış yapabilirsiniz.

### Kullanılan Teknolojiler
- .net Core 6.0
- Restful Web Api
- MVC Project
- Validation (Fluent Validation)
- AutoMapper
- Authentication
- Authorization
- Free Bootstrap template




