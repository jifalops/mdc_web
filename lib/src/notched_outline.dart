import 'base.dart';
import 'mdc_web/notched_outline.dart';

/// The notched outline is a border around all sides of either a Text Field or
/// Select component. This is used for the Outlined variant of either a Text
/// Field or Select.
///
/// Javascript: `mdc.notchedOutline.MDCNotchedOutline`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/notched-outline/#mdcnotchedoutline-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-notched-outline/index.js)
class MDCNotchedOutline extends MDCComponent {
  static MDCNotchedOutline attachTo(Element root) =>
      MDCNotchedOutline._attach(root);
  MDCNotchedOutline._attach(Element root)
      : _js = NotchedOutlineComponent.attachTo(root);

  MDCNotchedOutline(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  NotchedOutlineComponent get js => _js;
  final NotchedOutlineComponent _js;

  void notch(num notchWidth, bool isRtl) => js.notch(notchWidth, isRtl);
  void closeNotch() => js.closeNotch();
}

NotchedOutlineComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? NotchedOutlineComponent(root)
        : args == null
            ? NotchedOutlineComponent(root, foundation)
            : NotchedOutlineComponent(root, foundation, args);
