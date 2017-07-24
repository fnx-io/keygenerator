import 'dart:js';

class KeyForView {
  String private;
  String public;
}

KeyForView generateKey({int keySize: 1024}) {
  JsObject encryptObj;

  encryptObj = new JsObject(context['JSEncrypt']);
  encryptObj['default_key_size'] = keySize;
  encryptObj.callMethod('getKey');

  return new KeyForView()
    ..private = encryptObj.callMethod('getPrivateKey')
    ..public = encryptObj.callMethod('getPublicKey');
}
