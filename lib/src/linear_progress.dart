@JS('mdc.linearProgress')
library mdc_web_linear_progress;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A linear progress indicator.
///
/// Javascript: `mdc.linearProgress.MDCLinearProgress`.
///
/// See the [component reference](https://material.io/develop/web/components/linear-progress/#mdclinearprogress-api)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-linear-progress/index.js).
@JS('MDCLinearProgress')
abstract class LinearProgress extends Component {
  external static LinearProgress attachTo(Element element);
  external factory LinearProgress(Element element,
      [Foundation foundation, args]);

  external void set determinate(bool value);

  /// Value should be between 0 and 1, inclusive.
  external void set progress(num value);

  /// Value should be between 0 and 1, inclusive.
  external void set buffer(num value);

  external void set reverse(bool value);

  external void open();
  external void close();
}
