import 'dart:js';

class KeyForView {

  String private;
  String public;

}

KeyForView generateKey() {

  JsObject encryptObj;

  encryptObj = new JsObject(context['JSEncrypt']);
  encryptObj['default_key_size'] = 1024;
  encryptObj.callMethod('getKey');

  return new KeyForView()
    ..private = encryptObj.callMethod('getPrivateKey')
    ..public = encryptObj.callMethod('getPublicKey');

}
