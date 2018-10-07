@JS()
library mdc_web_util;

import 'package:js/js.dart';

@JS('JSON.stringify')
external String _stringify(value, [replacer, space]);

String stringify(value) => _stringify(value, null, 2);
