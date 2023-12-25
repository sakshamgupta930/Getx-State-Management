import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name',
          'name': 'Saksham Gupta',
        },
        'hi_IN': {
          'message': 'आपका क्या नाम है',
          'name': 'सक्षम गुप्ता',
        },
      };
}
