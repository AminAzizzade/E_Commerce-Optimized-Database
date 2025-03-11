# 🚀 E-Commerce Database Project  

📌 **Amaç**: Bu proje, **Amazon, Trendyol ve HepsiBurada** gibi büyük e-ticaret platformlarının veri yapılarını analiz ederek **bütünleşik ve optimize edilmiş bir veritabanı modeli** tasarlamayı hedefler.   

---

## 📊 Proje Hedefleri  

✅ **Mevcut Sistemleri Analiz Et** – Amazon, Trendyol ve HepsiBurada’nın veri gereksinimlerini inceleyerek **ortak ve özgün özelliklerini** belirle.  

✅ **EER Diyagramları Oluştur** – Her platform için **gelişmiş varlık-ilişki (EER) modeli** oluştur.  

✅ **Birleşik EER Modeli Geliştir** – Ortak yapıları **entegrasyon** yaparak, tüm sistemleri kapsayan **genişletilebilir** bir model oluştur.  

✅ **SQL Tabanlı Gerçekleme** – EER modelini **ilişkisel veritabanı** şeması olarak **DDL (Data Definition Language) komutlarıyla** uygula.  

✅ **Test İçin Veri Gir** – Veritabanını **örnek verilerle doldur** ve sorgulama testleri yap.  

---

## 📊 Veritabanı Tasarımı  

### **1️⃣ Bireysel Platform Analizi**  
Her platform için **kapsamlı bir veri analizi** yapıldı. Ana bileşenler şunlardır:  

- 👥 **Kullanıcılar** (Müşteriler & Satıcılar)  
- 🛍️ **Ürünler & Stok Yönetimi**  
- 🛒 **Alışveriş Sepeti Sistemi**  
- 📦 **Siparişler & Sipariş Kalemleri**  
- 💳 **Ödeme & Kampanya Sistemleri**  
- 🚚 **Kargo & Lojistik Yönetimi**  
- ⭐ **İnceleme & Değerlendirme**  

---

### **2️⃣ EER Diyagramları**  
📌 **Her platform için ayrı bir EER modeli oluşturuldu:**  

- **📄 Amazon EER** → `docs/Amazon_EER.pdf`  
- **📄 Trendyol EER** → `docs/Trendyol_EER.pdf`  
- **📄 HepsiBurada EER** → `docs/HepsiBurada_EER.pdf`  

🔍 **Hedef:** Veri yapılarındaki **benzerlikleri ve farklılıkları analiz etmek** ve **optimize edilmiş bir model oluşturmak**.  

---

### **3️⃣ Birleşik EER Modeli**  
**Amazon, Trendyol ve HepsiBurada** platformlarının **ortak özellikleri birleştirildi**, benzersiz özellikler **korundu** ve **genişletilebilir bir model** oluşturuldu.  

📄 **Sonuç:** `docs/ECommerceCombined_EER.pdf` → **Tam entegre edilmiş EER modeli**.  

---

### **4️⃣ SQL Uygulaması**  
Tüm şema, **ilişkisel veritabanı modeli** olarak **DDL (Data Definition Language) komutlarıyla** dönüştürüldü.  

📜 **SQL Scriptleri:**  
- 🛠️ **`sql/create_tables.sql`** → **Tabloları oluşturur**, kısıtlamaları tanımlar.  
- 🏗️ **`sql/insert_sample_data.sql`** → **Test için örnek verileri ekler**.  

---

## 📖 Dokümantasyon  

📄 **`docs/Database_Report.pdf`** → **Detaylı veritabanı tasarım süreci** açıklanıyor.  
📄 **`docs/MappingAllSteps.pdf`** → **EER modelinin ilişkisel şemaya dönüşüm adımları** bulunuyor.  
