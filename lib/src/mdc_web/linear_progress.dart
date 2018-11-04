@JS('mdc.linearProgress')
library linearProgress;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A linear progress indicator.
///
/// Javascript: `mdc.linearProgress.MDCLinearProgress`.
///
/// * [Design Guidelines](https://material.io/go/design-progress-indicators)
/// * [Component Reference](https://material.io/develop/web/components/linear-progress/#mdclinearprogress-api)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/linear-progress-indicator)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-linear-progress/index.js)
@JS('MDCLinearProgress')
abstract class LinearProgressComponent extends Component {
  external static LinearProgressComponent attachTo(Element root);
  external factory LinearProgressComponent(Element root,
      [MDCFoundation foundation, args]);

  external void set determinate(bool value);

  /// Value should be between 0 and 1, inclusive.
  external void set progress(num value);

  /// Value should be between 0 and 1, inclusive.
  external void set buffer(num value);

  external void set reverse(bool value);

  external void open();
  external void close();
}
