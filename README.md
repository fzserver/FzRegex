# FzRegex

A comprehensive regex validation library for Dart/Flutter developers. Validate formats such as:

- Phone Numbers  
- Names  
- Postal Codes  
- Emails  
- URLs  
- IP Addresses  
- Dates & Times  
- Passwords (Strong & Medium)  
- Credit/Debit Cards  
- And many more!  

[![Pub Version](https://img.shields.io/pub/v/fzregex.svg)](https://pub.dev/packages/fzregex)  
[![GitHub Repo](https://img.shields.io/github/stars/FrazileDevelopers/FzRegex.svg?style=social)](https://github.com/FrazileDevelopers/FzRegex)

---

## 🚀 Installation

Add the package to the `dependencies:` section of your `pubspec.yaml`:

```yaml
dependencies:
  fzregex: <latest_version>
```

Then Run
```sh
flutter pub get
```

## 🌟 Features

FzRegex offers validation for a wide range of data formats, including:

### 📝 User Input
- Username  
- Name  
- Only Numbers (Numeric input without whitespace or symbols)  
- Passwords (Strong & Medium)  

### 🖼️ Files & Media
- Images: PNG, JPEG, SVG  
- Audio: MP3, WAV, etc.  
- Video: MP4, AVI, etc.  
- Text Files (TXT)  
- Documents: Word (DOC), Excel (XLS), PowerPoint (PPT), PDF  
- APK Files  

### 🔍 Identifiers
- Social Security Numbers (SSN)  
- International Standard Book Numbers (ISBN-10 & ISBN-13)  
- Passport Numbers  
- IP Addresses: IPv4, IPv6  

### 🌐 Web
- Emails  
- URLs  
- GitHub Repository Names  
- HTML Tags  

### 💰 Financial
- Credit/Debit Card Numbers  
- Currency Formats  
- Hash Formats: MD5, SHA1, SHA256  

### 🧩 Miscellaneous
- Postal Codes  
- Date/Time Validation  
- Binary Numbers  

For a detailed list of patterns, visit the [patterns file](https://github.com/FrazileDevelopers/FzRegex/blob/main/lib/utils/pattern.dart).

## 🛠️ Usage

Here’s how you can use FzRegex in your Dart/Flutter project:

```dart
import 'package:fzregex/fzregex.dart';
import 'package:fzregex/utils/pattern.dart';

void main() {
  // Validate a username
  bool isValidUsername = FzRegex.hasMatch('Frazile', FzPattern.username);
  
  // Validate a phone number
  bool isValidPhone = FzRegex.hasMatch('+91 1234567890', FzPattern.phone);

  // Validate an email
  bool isValidEmail = FzRegex.hasMatch('frazilex@frazile.app', FzPattern.email);

  // Validate a URL
  bool isValidURL = FzRegex.hasMatch('https://frazile.com/', FzPattern.url);

  // Validate currency format
  bool isValidCurrency = FzRegex.hasMatch('\$ 100,000', FzPattern.currency);

  print(isValidUsername); // true
  print(isValidPhone);    // true
}
```

## ❤️ Support the Project

If you find this project helpful, consider supporting its development:

### Crypto Donations
	• Bitcoin (BTC): bc1qfz3nxgnq05zhdfnt7zuzzx9mhmejrm8sv2sfq8
 • Ethereum (ETH): 0x27dC4A17C23A22520A395457202CaEae9bFCDAC0
 • Tron (TRX): TRrgqPQdFMJ9Lmik2ACKSM3CnnYDDAeYJv
 • BNB Smart Chain (BSC): 0x27dC4A17C23A22520A395457202CaEae9bFCDAC0
 • Solana (SOL): 98MhEWJ6XQf34cg3vcmh8Ggm7u51bmUvWNKzUQr9MmEt
 • Polygon (POL): 0x27dC4A17C23A22520A395457202CaEae9bFCDAC0
 • NEAR Token (NEAR): frazile.near

## 🧑‍💻 Developed By

Parth Aggarwal CEO & Developer at Frazile Inc.

## 🧑‍💻 Developed By

**Parth Aggarwal**  
CEO & Developer at Frazile Inc.  
[GitHub Profile](https://github.com/FrazileDevelopers)