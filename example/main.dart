import 'package:fzregex/fzregex.dart';
import 'package:fzregex/utils/pattern.dart';

main() {
  Fzregex.hasMatch('Krishna_Ra1', FzPattern.username);
  Fzregex.hasMatch('+91 7009046544', FzPattern.phone);
  Fzregex.hasMatch('krishna@gmail.com', FzPattern.email);
  Fzregex.hasMatch('https://youtube.com/', FzPattern.url);
  Fzregex.hasMatch('\$ 100,000', FzPattern.currency);
}
