/// Strict Pattern
/// Symbol ^ and $ in pattern is to make sure all the string value following the pattern
/// Regex will return `false` if any of the characters do not follow the pattern.
/// Example: Email Pattern
/// - testexample.com => `false`
/// - test@example.com => `true`
/// - test@examplecom => `false`

// ignore_for_file: lines_longer_than_80_chars

class FzPattern {
  /// Username regex
  static const Pattern username = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';

  /// Name regex
  static const Pattern name =
      r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)$";

  /// Email regex
  static const Pattern email =
      // r'^[a-z0-9]+([-+._][a-z0-9]+){0,2}@.*?(\.(a(?:[cdefgilmnoqrstuwxz]|ero|(?:rp|si)a)|b(?:[abdefghijmnorstvwyz]iz)|c(?:[acdfghiklmnoruvxyz]|at|o(?:m|op))|d[ejkmoz]|e(?:[ceghrstu]|du)|f[ijkmor]|g(?:[abdefghilmnpqrstuwy]|ov)|h[kmnrtu]|i(?:[delmnoqrst]|n(?:fo|t))|j(?:[emop]|obs)|k[eghimnprwyz]|l[abcikrstuvy]|m(?:[acdeghklmnopqrstuvwxyz]|il|obi|useum)|n(?:[acefgilopruz]|ame|et)|o(?:m|rg)|p(?:[aefghklmnrstwy]|ro)|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|t(?:[cdfghjklmnoprtvwz]|(?:rav)?el)|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])\b){1,2}$';
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$";

  /// URL regex
  static const Pattern url =
      r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$";

  /// Phone Number regex
  /// Must started by either, "0", "+", "+XX <X between 2 to 4 digit>", "(+XX <X between 2 to 3 digit>)"
  /// Can add whitespace separating digit with "+" or "(+XX)"
  /// Example: 05555555555, +555 5555555555, (+123) 5555555555, (555) 5555555555, +5555 5555555555
  static const Pattern phone =
      r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$';

  /// Hexadecimal regex
  static const Pattern hexadecimal = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$';

  /// Image vector regex
  static const Pattern vector = r'.(svg)$';

  /// Image regex
  static const Pattern image = r'.(jpeg|jpg|gif|png|bmp)$';

  /// Audio regex
  static const Pattern audio = r'.(mp3|wav|wma|amr|ogg)$';

  /// Video regex
  static const Pattern video = r'.(mp4|avi|wmv|rmvb|mpg|mpeg|3gp)$';

  /// Txt regex
  static const Pattern txt = r'.txt$';

  /// Document regex
  static const Pattern doc = r'.(doc|docx)$';

  /// Excel regex
  static const Pattern excel = r'.(xls|xlsx)$';

  /// PPT regex
  static const Pattern ppt = r'.(ppt|pptx)$';

  /// APK regex
  static const Pattern apk = r'.apk$';

  /// PDF regex
  static const Pattern pdf = r'.pdf$';

  /// HTML regex
  static const Pattern html = r'.html$';

  /// DateTime regex (UTC)
  /// Unformatted date time (UTC and Iso8601)
  /// Example: 2020-04-27 08:14:39.977, 2020-04-27T08:14:39.977, 2020-04-27 01:14:39.977Z
  static const Pattern basicDateTime =
      r'^\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}.\d{3}Z?$';

  /// Binary regex
  /// Consist only 0 & 1
  static const Pattern binary = r'^[0-1]*$';

  /// MD5 regex
  static const Pattern md5 = r'^[a-f0-9]{32}$';

  /// SHA1 regex
  static const Pattern sha1 =
      r'(([A-Fa-f0-9]{2}\:){19}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{40})';

  /// SHA256 regex
  static const Pattern sha256 =
      r'([A-Fa-f0-9]{2}\:){31}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{64}';

  /// SSN (Social Security Number) regex
  static const Pattern ssn =
      r'^(?!0{3}|6{3}|9[0-9]{2})[0-9]{3}-?(?!0{2})[0-9]{2}-?(?!0{4})[0-9]{4}$';

  /// IPv4 regex
  static const Pattern ipv4 =
      r'^(?:(?:^|\.)(?:2(?:5[0-5]|[0-4]\d)|1?\d?\d)){4}$';

  /// IPv6 regex
  static const Pattern ipv6 =
      r'^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(([0-9A-Fa-f]{1,4}:){0,5}:((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(::([0-9A-Fa-f]{1,4}:){0,5}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$';

  /// ISBN 10 & 13 regex
  static const Pattern isbn =
      r'(ISBN(\-1[03])?[:]?[ ]?)?(([0-9Xx][- ]?){13}|([0-9Xx][- ]?){10})';

  /// Github repository regex
  static const Pattern github =
      r'((git|ssh|http(s)?)|(git@[\w\.]+))(:(\/\/)?)([\w\.@\:/\-~]+)(\.git)(\/)?';

  /// Passport No. regex
  static const Pattern passport = r'^(?!^0+$)[a-zA-Z0-9]{6,9}$';

  /// Currency regex
  static const Pattern currency =
      r'^(S?\$|\₩|Rp|\¥|\€|\₹|\₽|fr|R$|R)?[ ]?[-]?([0-9]{1,3}[,.]([0-9]{3}[,.])*[0-9]{3}|[0-9]+)([,.][0-9]{1,2})?( ?(USD?|AUD|NZD|CAD|CHF|GBP|CNY|EUR|JPY|IDR|MXN|NOK|KRW|TRY|INR|RUB|BRL|ZAR|SGD|MYR))?$';

  /// Numeric Only regex (No Whitespace & Symbols)
  static const Pattern numericOnly = r'^\d+$';

  /// Alphabet Only regex (No Whitespace & Symbols)
  static const Pattern alphabetOnly = r'^[a-zA-Z]+$';

  /// Password (Easy) Regex
  /// Allowing all character except 'whitespace'
  /// Minimum character: 8
  static const Pattern passwordEasy = r'^\S{8,}$';

  /// Password (Easy) Regex
  /// Allowing all character
  /// Minimum character: 8
  static const Pattern passwordEasyAllowedWhitespace = r'^[\S ]{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal1 = r'^(?=.*[A-Za-z])(?=.*\d)\S{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal1AllowedWhitespace =
      r'^(?=.*[A-Za-z])(?=.*\d)[\S ]{8,}$';

  /// Password (Normal) Regex
  /// Allowing LETTER and NUMBER only
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal2 =
      r'^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z0-9]{8,}$';

  /// Password (Normal) Regex
  /// Allowing LETTER and NUMBER only
  /// Must contains: 1 letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal2AllowedWhitespace =
      r'^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z0-9 ]{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal3 =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)\S{8,}$';

  /// Password (Normal) Regex
  /// Allowing all character
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum character: 8
  static const Pattern passwordNormal3AllowedWhitespace =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\S ]{8,}$';

  /// Password (Hard) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum character: 8
  static const Pattern passwordHard =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])\S{8,}$';

  /// Password (Hard) Regex
  /// Allowing all character
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum character: 8
  static const Pattern passwordHardAllowedWhitespace =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[\S ]{8,}$';

  /// Postal Code
  static const Pattern postalCode = r"^\d{5}(-\d{4})?$";

  /// HTML Tags
  /// multiLine = true
  static const Pattern htmlTags =
      r"^<(?:([A-Za-z][A-Za-z0-9]*)\b[^>]*>(?:.*?)</\1>|[A-Za-z][A-Za-z0-9]*\b[^/>]*/>)$";

  /// Credit/Debit Card
  static const Pattern creditcard =
      r"^(?:3[47]\d{2}([\- ]?)\d{6}\1\d{5}|(?:4\d{3}|5[1-5]\d{2}|6011)([\- ]?)\d{4}\2\d{4}\2\d{4})$";

  /// Only Numbers
  static const Pattern onlynumber = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';

  /// Matches national insurance numbers in the UK
  static final RegExp ninValidator =
      RegExp(r"^\s*[a-zA-Z]{2}(?:\s*\d\s*){6}[a-zA-Z]?\s*$");

  /// Matches UK post codes
  static final RegExp postCodeValidator = RegExp(
      r"([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9][A-Za-z]?))))\s?[0-9][A-Za-z]{2})");

  /// Matches SSN Number
  static final RegExp ssnValidator =
      RegExp(r"^(?!000|666)[0-8][0-9]{2}-(?!00)[0-9]{2}-(?!0000)[0-9]{4}$");

  /// Matches US Zip Code Validation
  static final RegExp uszipcodeValidator = RegExp(r"^[0-9]{5}(?:-[0-9]{4})?$");

  /// Matches International Phone Numbers
  static final RegExp internationalPhoneNumValidator =
      RegExp(r"^\+(?:[0-9] ?){6,14}[0-9]$");

  /// Matches Canada Postal Code Validation
  static final RegExp canadaPostalCodeValidator =
      RegExp(r"^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$");

  /// YouTube Video URL Regex
  /// Examples: https://youtu.be/dQw4w9WgXcQ, https://www.youtube.com/watch?v=dQw4w9WgXcQ
  static const Pattern youtubeUrl =
      r'^(https?\:\/\/)?(www\.youtube\.com|youtu\.?be)\/.+$';

  /// MAC Address Regex
  /// Examples: 00:1A:2B:3C:4D:5E, 00-1A-2B-3C-4D-5E
  static const Pattern macAddress =
      r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$';

  /// Time (24-hour format) Regex
  /// Examples: 23:59, 00:00, 14:30
  static const Pattern time24 = r'^([01]\d|2[0-3]):([0-5]\d)$';

  /// Time (12-hour format with AM/PM) Regex
  /// Examples: 1:45 PM, 12:00 am, 09:15 Am
  static const Pattern time12 =
      r'^(0?[1-9]|1[0-2]):[0-5][0-9](\s)?(?i)(AM|PM)$';

  /// Color Code (Hex with optional alpha) Regex
  /// Examples: #FFF, #FFFFFF, #FFFFFFFF, #1234
  static const Pattern colorHexWithAlpha =
      r'^#(?:[0-9a-fA-F]{3,4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$';

  /// Twitter Username Regex
  /// Examples: @username, username
  static const Pattern twitterUsername = r'^@?(\w){1,15}$';

  /// UUID v4 Regex
  /// Example: f47ac10b-58cc-4372-a567-0e02b2c3d479
  static const Pattern uuidV4 =
      r'^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$';

  /// Slug (URL-friendly string) Regex
  /// Examples: hello-world, flutter-tutorial, my-blog-post
  static const Pattern slug = r'^[a-z0-9]+(?:-[a-z0-9]+)*$';

  /// Firebase Push ID Regex
  /// Example: -MabcdEfghIJKlmNoPqR
  static const Pattern firebasePushId = r'^[a-zA-Z0-9_-]{20}$';

  /// Emoji Regex (basic support for common emojis)
  /// Examples: 😀, ❤️, 🚀
  static const Pattern emoji = r'(\p{Emoji_Presentation}|\p{Emoji}\uFE0F)';

  /// IPv4 CIDR Notation Regex
  /// Examples: 192.168.1.0/24, 10.0.0.0/8
  static const Pattern ipv4Cidr =
      r'^(([0-9]{1,3}\.){3}[0-9]{1,3})\/([0-9]|[1-2][0-9]|3[0-2])$';

  /// Base64 String Regex
  /// Examples: SGVsbG8gd29ybGQ=, U29tZSBzdHJpbmc=
  static const Pattern base64 =
      r'^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$';

  /// Bitcoin Address Regex (Legacy & SegWit)
  /// Examples: 1BoatSLRHtKNngkdXEeobR76b53LETtpyT, 3J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy
  static const Pattern bitcoinAddress = r'^[13][a-km-zA-HJ-NP-Z1-9]{25,34}$';

  /// Ethereum Address Regex
  /// Examples: 0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe
  static const Pattern ethereumAddress = r'^0x[a-fA-F0-9]{40}$';

  /// Litecoin Address Regex
  /// Examples: LZym3j8fS9bWf8o6RzKvA3tC2AedZ6W9aW
  static const Pattern litecoinAddress = r'^[LM3][a-km-zA-HJ-NP-Z1-9]{26,33}$';

  /// Ripple (XRP) Address Regex
  /// Examples: rG1QQv2nh2gr7RCZ1P8YYcBUKCCN633jCn
  static const Pattern rippleAddress = r'^r[0-9a-zA-Z]{24,34}$';

  /// Dogecoin Address Regex
  /// Examples: D5r2hrU1qJUzS9NBpZxkA6sZs6kKjA3vZc
  static const Pattern dogecoinAddress = r'^[D9A][a-km-zA-HJ-NP-Z1-9]{25,34}$';

  /// Monero Address Regex
  /// Examples: 48bWuoDGAGY4o9c8ZC2XG3dQtrM7StJmqAsYHgw4x9qV6uW6t7P1AJVC3fUQ7m7G3yyMfA8GJmLt4zHYvstDQCQL6j9e9sS
  static const Pattern moneroAddress = r'^[48][0-9AB][1-9A-HJ-NP-Za-km-z]{93}$';

  /// Dash Address Regex
  /// Examples: XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg
  static const Pattern dashAddress = r'^X[1-9A-HJ-NP-Za-km-z]{33}$';

  /// Cardano Shelley Address Regex (starts with addr1)
  /// Examples: addr1q9z06azdku5f8u20szctwegrv08c7l5psxx4c83n0nq3qkdjqw7zzg8v4ga2q9q8rpgz2c6x0nnpag6t0jx9cq4tgf6qg0ahz3
  static const Pattern cardanoAddress = r'^addr1[0-9a-z]{58,}$';

  /// Solana Address Regex
  /// Examples: 4Nd1mYzGQj6PPZQZn5hVQ5AYy6AS2FoKZ5FBL2XRxYcB
  static const Pattern solanaAddress = r'^[1-9A-HJ-NP-Za-km-z]{32,44}$';

  /// Polkadot Address Regex
  /// Examples: 12D3KooWM1rCZU4vT2LuXoYgB1T6PqvpmGJv8SBrC7oQQXvQUgZq
  static const Pattern polkadotAddress = r'^[1-9A-HJ-NP-Za-km-z]{47,48}$';

  /// Tron Address Regex
  /// Examples: TQ5xAinUM2BV5EUD5L5EwbBeH6RBaJv1io
  static const Pattern tronAddress = r'^T[1-9A-HJ-NP-Za-km-z]{33}$';

  /// Binance Chain (BEP-20) Address Regex (Same as Ethereum)
  /// Examples: 0x28C6c06298d514Db089934071355E5743bf21d60
  static const Pattern binanceSmartChainAddress = r'^0x[a-fA-F0-9]{40}$';

  /// Private Key (Ethereum-like 64 hex chars)
  /// Examples: 4c0883a69102937d6231471b5dbb6204fe51296170827946d27b382e66ad4f4f
  static const Pattern privateKeyHex = r'^[a-fA-F0-9]{64}$';

  /// Transaction Hash (64 hex characters)
  /// Examples: 0x5e2d3c57c0e58923a948e8cd5a1a8d5f50f5a5caa1bcf7d8a1de474f21f7915a
  static const Pattern transactionHash = r'^0x([A-Fa-f0-9]{64})$';

  /// BIP39 Mnemonic Regex (12 or 24 words)
  /// Examples:
  /// legal winner thank year wave sausage worth useful legal winner thank yellow
  /// abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon about
  static const Pattern bip39Mnemonic =
      r'^([a-z]+ ){11}[a-z]+$|^([a-z]+ ){23}[a-z]+$';

  /// GSTIN (Goods and Services Tax Identification Number) - 15 characters
  /// Format: 2 digit state code + 10-digit PAN + 1 entity code + 1 checksum
  /// Example: 22AAAAA0000A1Z5
  static const Pattern gstin =
      r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$';

  /// PAN (Permanent Account Number) - 10 characters
  /// Format: 5 letters + 4 digits + 1 letter
  /// Example: ABCDE1234F
  static const Pattern pan = r'^[A-Z]{5}[0-9]{4}[A-Z]$';

  /// Aadhaar (UIDAI 12-digit number)
  /// Format: 12 digits, cannot start with 0 or 1
  /// Example: 234567890123
  static const Pattern aadhaar = r'^[2-9]{1}[0-9]{11}$';

  /// IBAN (International Bank Account Number)
  /// Supports general IBAN structure: 2 letters country code + 2 digits + up to 30 alphanumeric chars
  /// Example: GB82WEST12345698765432
  static const Pattern iban = r'^[A-Z]{2}[0-9]{2}[A-Z0-9]{11,30}$';

  /// US SSN (Social Security Number) - Strict format: XXX-XX-XXXX
  /// Invalid prefixes like 000, 666, and 900–999 are not allowed
  /// Example: 123-45-6789
  static const Pattern usSsnStrict =
      r'^(?!000|666|9\d{2})\d{3}-(?!00)\d{2}-(?!0000)\d{4}$';

  /// IFSC Code - 11 characters
  /// Format: 4 letters (bank code) + 0 + 6-digit branch code
  /// Example: SBIN0005943
  static const Pattern ifsc = r'^[A-Z]{4}0[A-Z0-9]{6}$';

  /// UPI ID Regex (e.g. mobile@upi or username@bank)
  /// Accepts lowercase, digits, dot, dash, plus underscore in name; domain must be alphanumeric
  /// Examples: test.user@okaxis, 1234567890@upi
  static const Pattern upiId = r'^[a-z0-9.\-_+]{2,256}@[a-z]{2,64}$';
}
