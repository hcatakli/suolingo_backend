# Suolingo Backend API
Suolingo, kullanıcıların İngilizce öğrenmesine yardımcı olan; kelime öğrenme, telaffuz, quiz, seviye yönetimi ve medya tabanlı öğrenme özellikleri sunan bir dil öğrenme platformudur.  
Bu repository, Suolingo uygulamasının **Ruby on Rails tabanlı backend API** projesidir.

---

## 🚀 Özellikler

### 👤 Kullanıcı Yönetimi
- Kullanıcı oluşturma (register)
- JWT tabanlı güvenli login/logout
- Kullanıcının seviye, skor, ilerleme gibi bilgilerinin tutulması

### 📚 Kelime Yönetimi (Words)
- Yeni kelime ekleme
- Kelime listesi
- Kelime detayları
- Kelimelere bağlı çoklu ses ve video desteği

### 🔊 Word Audio (Kelime Seslendirmeleri)
- Her kelimeye birden fazla ses dosyası ekleme
- Farklı konuşmacı isimleri, aksan ve süre bilgisi
- `/words/:id/audios` ile kelimeye göre listeleme

### 🎥 Word Video (Kelime Videoları)
- Kelimeye multiple video ekleme
- Kullanıcıya gerçek telaffuz gösterimleri
- `/words/:id/videos` endpoint’i ile kelime videoları

### 🗣️ Pronunciation Attempts (Kullanıcı Telaffuz Denemeleri)
- Kullanıcıların kelimeleri telaffuz denemelerini kaydetme
- Ses kaydı URL’si, skor ve otomatik geri bildirim
- Kullanıcı–Kelime ilişkili tarihçeli kayıt modeli

### 🧠 Quiz & Eğitim Yapısı (Genişletilebilir)
- Kelime odaklı quiz’lerin backend altyapısı
- Kullanıcı skor güncellemeleri

---

## 🛠️ Kullanılan Teknolojiler

| Teknoloji | Açıklama |
|----------|----------|
| **Ruby 3.x** | Proje dili |
| **Ruby on Rails87** | API altyapısı |
| **MySQL** | Veritabanı |
| **ActiveRecord** | ORM |
| **Postman Collection** | API testi için hazır set |

---


---

## 🔧 Kurulum

### 1. Repo’yu Klonla
```bash
git clone https://github.com/<username>/suolingo-backend.git
cd suolingo-backend
```

### 2. Bağımlılıkları Yükle
```bash
git clone https://github.com/<username>/suolingo-backend.git
cd suolingo-backend
```

### 3. Veritabanı oluştur
```bash
rails db:create
rails db:migrate
```

### 4. Sunucuyu Başlat
4. Sunucuyu Başlat
``` bash
rails s
```

## 🧪 Postman Collection

Proje ile birlikte gelen Postman koleksiyonunu şu şekilde içe aktarabilirsiniz:
Postman → Import
Dosya seç → Suolingo.postman_collection.json
Koleksiyon artık kullanılabilir!

## 📡 Temel API Endpoint’leri
### 🔑 Kullanıcı
| Method | Endpoint     | Açıklama        |
| ------ | ------------ | --------------- |
| POST   | `/register`  | Yeni kullanıcı  |
| POST   | `/login`     | Giriş           |
| GET    | `/users/:id` | Kullanıcı detay |

### 📚 Kelime
| Method | Endpoint     | Açıklama     |
| ------ | ------------ | ------------ |
| GET    | `/words`     | Kelimeler    |
| POST   | `/words`     | Yeni kelime  |
| GET    | `/words/:id` | Kelime detay |

### 🔊 Word Audio
| Method | Endpoint            |
| ------ | ------------------- |
| POST   | `/word_audios`      |
| GET    | `/words/:id/audios` |

### 🎥 Word Video
| Method | Endpoint            |
| ------ | ------------------- |
| POST   | `/word_videos`      |
| GET    | `/words/:id/videos` |

### 🗣️ Pronunciation Attempt
| Method | Endpoint                  |
| ------ | ------------------------- |
| POST   | `/pronunciation_attempts` |

