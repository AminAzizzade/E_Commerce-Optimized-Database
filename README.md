# 🚀 E-Commerce Database Project  

📌 **Günümüz e-ticaret devleri, büyük ve karmaşık veri yapılarıyla çalışıyor.**  
Bu projede, **Amazon, Trendyol ve HepsiBurada** platformlarının veri modellerini analiz ederek **optimize edilmiş, ölçeklenebilir ve bütünleşik bir veritabanı modeli** geliştirdim.  

---

## 🎯 Proje Hedefleri  

✅ **Mevcut Sistemlerin Analizi** – Amazon, Trendyol ve HepsiBurada’nın veri gereksinimleri incelenerek **ortak ve platforma özgü özellikler** belirlendi.  

✅ **EER Diyagramları** – Her platformun **varlık-ilişki (EER) modeli** oluşturuldu ve detaylı analiz yapıldı.  

✅ **Birleşik ve Optimizasyonlu Model** – Ortak veri yapıları birleştirilerek, tüm sistemleri kapsayan **genişletilebilir ve modüler** bir model tasarlandı.  

✅ **SQL Uygulaması** – Son model, ilişkisel veritabanı şeması olarak **DDL (Data Definition Language) komutlarıyla** kodlandı.  

✅ **Test ve Veri Girişi** – Gerçekçi test senaryoları için **örnek veri kümeleri eklendi** ve sorgular çalıştırıldı.  

---

## 📊 Veritabanı Tasarımı  

### 🔍 1️⃣ Platform Bazlı Analiz  

Her platform için yapılan detaylı analiz sonucunda belirlenen ana bileşenler:  

- 👥 **Kullanıcılar** (Müşteriler & Satıcılar)  
- 🛍️ **Ürünler & Stok Yönetimi**  
- 🛒 **Alışveriş Sepeti Sistemi**  
- 📦 **Siparişler & Sipariş Kalemleri**  
- 💳 **Ödeme & Kampanya Sistemleri**  
- 🚚 **Kargo & Lojistik Yönetimi**  
- ⭐ **İnceleme & Değerlendirme**  

---

### 📌 2️⃣ EER Diyagramları  

Her platform için ayrı **EER diyagramları** oluşturuldu:  

- 📄 [Amazon EER](Amazon_EER.html)  
- 📄 [Trendyol EER](docs/Trendyol_EER.pdf)  
- 📄 [HepsiBurada EER](docs/HepsiBurada_EER.pdf)  

🔍 **Amaç:** Platformların veri modellerindeki **benzerlikleri ve farklılıkları analiz etmek**.  

---

### 🔄 3️⃣ Optimizasyonlu Birleşik EER Modeli  

Amazon, Trendyol ve HepsiBurada’nın ortak özellikleri **tek bir modelde birleştirildi**.  
Benzersiz yapılar korunarak **esnek ve ölçeklenebilir** bir model oluşturuldu.  

📄 **Tam entegre model:** [ECommerceCombined_EER.pdf](docs/ECommerceCombined_EER.pdf)  

---

### 🛠️ 4️⃣ SQL Uygulaması  

EER modeli, ilişkisel veritabanı şemasına dönüştürüldü ve **DDL komutlarıyla kodlandı.**  

📜 **SQL Scriptleri:**  
- 🏗️ [Tabloları Oluştur](sql/create_tables.sql) → **Veritabanı tabloları ve kısıtlamaları içerir.**  
- 📊 [Örnek Veri Ekle](sql/insert_sample_data.sql) → **Test için örnek veriler içerir.**  

---

## 📖 Dokümantasyon  

📄 [📘 Database Report](docs/Database_Report.pdf) → **Tasarım süreci, karar mekanizmaları ve optimizasyonlar detaylı olarak açıklandı.**  

📄 [📑 EER Modeli Dönüşüm Adımları](docs/MappingAllSteps.pdf) → **EER modelinin ilişkisel şemaya dönüşüm süreci anlatıldı.**  

---

## 🔍 Sonuç  

Bu proje, **büyük ölçekli e-ticaret sistemleri için entegre ve optimize edilmiş bir veritabanı modeli sunmaktadır.**  
Model, platformlar arası veri yönetimini kolaylaştırarak **ölçeklenebilir ve verimli** bir yapı sağlamaktadır.  

📌 **Tüm detaylara erişmek için yukarıdaki dokümantasyon ve SQL script dosyalarına göz atabilirsiniz.**  
