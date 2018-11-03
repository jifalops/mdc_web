@JS('mdc')
library autoinit;

import 'dart:html';
import 'package:js/js.dart';

/// Automatically create MDC-Web components from html elements that have a
/// `data-mdc-auto-init="MDC<component>"` attribute.
///
/// Javascript: `mdc.autoInit()`.
///
/// * [Component Reference](https://material.io/develop/web/components/auto-init)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-auto-init)
@JS()
external void autoInit([Node root, void Function(String) warn]);

/// Triggered when initialization of all components is complete.
const autoInitEndEvent = 'MDCAutoInit:End';
