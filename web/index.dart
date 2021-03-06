// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';
import 'package:fnx_ui/errors.dart';
import 'package:keygenerator/key_generator.dart';
import 'package:logging/logging.dart';

void main() {

  // logování
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    String message = '[${rec.level.name}]:'.padRight(8) + '${rec.loggerName}: ${rec.message}';
    if (rec.level >= Level.SEVERE) {
      window.console.error(message);
    } else {
      print(message);
    }
  });

  /*
  // info o startu
  Logger r = new Logger("admin.dart");
  r.info("================================================================");
  r.info(" Starting NanoEnvi admin:");
  r.info("   - apiRoot: ${apiRoot}");
  r.info("   - build: ${fnxConfigMeta()["timestamp"]}");
  r.info("================================================================");
  */

  // START!
  bootstrap(KeyGenerator, [
    provide(ExceptionHandler, useValue: new FnxExceptionHandler())
  ]);

}