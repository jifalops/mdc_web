@JS()
library mdc_web_util;

import 'package:js/js.dart';

@JS('JSON.stringify')
external String _stringify(value, [replacer, space]);

String stringify(value, [replacer = null, space = 2]) =>
    _stringify(value, replacer, space);
