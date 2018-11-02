part of mdc_web;

/// Floating labels display the type of input a field requires.
///
/// Javascript: `mdc.floatingLabel.MDCFloatingLabel`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/floating-label/#mdcfloatinglabel-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-floating-label/index.js)
class MDCFloatingLabel extends MDCComponent<_FloatingLabel>
    implements MDCSelectionControl {
  static MDCFloatingLabel attachTo(Element root) =>
      MDCFloatingLabel._attach(root);
  MDCFloatingLabel._attach(Element root)
      : super._(_FloatingLabel.attachTo(root));

  MDCFloatingLabel(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _FloatingLabel _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _FloatingLabel(root)
          : args == null
              ? _FloatingLabel(root, foundation)
              : _FloatingLabel(root, foundation, args);

  void shake(bool shouldShake) => _js.shake(shouldShake);
  void float(bool shouldFloat) => _js.float(shouldFloat);
  num getWidth() => _js.getWidth();

  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);
}

@JS('floatingLabel.MDCFloatingLabel')
abstract class _FloatingLabel extends _Component implements _SelectionControl {
  external static _FloatingLabel attachTo(Element root);
  external factory _FloatingLabel(Element root, [foundation, args]);

  external void shake(bool shouldShake);
  external void float(bool shouldFloat);
  external num getWidth();
}
