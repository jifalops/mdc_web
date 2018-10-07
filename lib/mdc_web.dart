/// Dart wrapper for the `material-components-web` Javascript library.

@JS('mdc')
library mdc_web;

import 'dart:html';
import 'package:js/js.dart';
import 'package:mdc_web/src/util.dart';

export 'package:mdc_web/src/util.dart';

part 'src/foundation.dart';
part 'src/component.dart';
part 'src/ripple.dart';

/// Automatically create MDC-Web components from html elements that have a
/// `data-mdc-auto-init="<class>"` attribute.
///
/// See https://material.io/develop/web/components/auto-init/
@JS()
external void autoInit();
