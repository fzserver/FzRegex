import 'package:fzregex/fzregex.dart';

main() {
  print(validator.email('example@example.co.in')); // true

  print(validator.url(
      'https://storage.googleapis.com/frazilegradients/assets/data/gradients.php')); // true

  print(validator.currency('£1000')); // true

  print(validator.ip('67.52.159.38')); // true

  print(validator.time('14:34 GMT -5')); // true

  print(validator.htmlTags('<strong>Bold</strong>\n'
      '<em>Emphazied</em>\n'
      '<b>Bold</b>\n'
      '<i>Italics</i>\n'
      '<hr />')); // true
}
