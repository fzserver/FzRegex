// ignore: public_member_api_docs
class Fzregex {
  /// Returns whether the pattern has a match in the string [input].
  static bool hasMatch(String s, Pattern p) => RegExp(p.toString()).hasMatch(s);
}
