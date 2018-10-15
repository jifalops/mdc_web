@JS()
library mdc_web_util;

import 'package:js/js.dart';

@JS('JSON.stringify')
external String stringify(value, [replacer, space]);
