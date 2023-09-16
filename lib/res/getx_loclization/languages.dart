import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'How are you?', 
          'key': 'I am fine.',
          'internet_exception':"We're unable to show results\n Please check you data \n connection.",
          'general_exception':"We're unable to process your message.\n Please try again",
          'Welcome_back':'welcome \n back',
          'Login':'login',
          'Email_hint':'Email',
          'Password_hint':'Password'
          },
        'gu_IN': {'message': 'તમે કેમ છો?', 'key': 'હું મજામા છુ.'},
        'hi_IN': {'message': 'आप कैसे हैं?', 'key': 'मैं ठीक हूँ.'}
      };
}