part of mdc_web;

/// A linear progress indicator.
///
/// Javascript: `mdc.linearProgress.MDCLinearProgress`.
///
/// See the [component reference](https://material.io/develop/web/components/linear-progress/#mdclinearprogress-api)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-linear-progress).
@JS('linearProgress.MDCLinearProgress')
abstract class MDCLinearProgress extends MDCComponent {
  external factory MDCLinearProgress(Element element,
      [MDCFoundation foundation, args]);
  external static MDCLinearProgress attachTo(Element element);

  external void set determinate(bool value);

  /// Value should be between 0 and 1, inclusive.
  external void set progress(num value);

  /// Value should be between 0 and 1, inclusive.
  external void set buffer(num value);

  external void set reverse(bool value);

  external void open();
  external void close();
}
