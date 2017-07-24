// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:fnx_ui/fnx_ui.dart';
import 'package:keygenerator/generator.dart';

@Component(
    selector: 'key-generator',
    templateUrl: 'key_generator.html'
)
class KeyGenerator {

  @ViewChild("app")
  FnxApp app;

  KeyForView key;

  void doGenerateBlue() {
    key = generateKey(keySize: 1024);
  }

  void doGenerateRed() {
    key = generateKey(keySize: 2048);
  }
}
