import 'base.dart';
import 'mdc_web/list.dart';

/// Lists are continuous, vertical indexes of text or images.
///
/// Javascript: `mdc.list.MDCList`.
///
/// * [Design Guidelines](https://material.io/go/design-lists)
/// * [Component Reference](https://material.io/develop/web/components/lists/)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/list)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-list/index.js)
class MDCList extends MDCComponent {
  static MDCList attachTo(Element root) => MDCList._attach(root);
  MDCList._attach(Element root) : _js = ListComponent.attachTo(root);

  MDCList(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  ListComponent get js => _js;
  final ListComponent _js;

  void set vertical(bool value) => js.vertical = value;
  void set wrapFocus(bool value) => js.wrapFocus = value;
  void set singleSelection(bool value) => js.singleSelection = value;
  void set selectedIndex(int value) => js.selectedIndex = value;

  List<Element> get listElements => List.from(js.listElements);

  void layout() => js.layout();
}

ListComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? ListComponent(root)
        : args == null
            ? ListComponent(root, foundation)
            : ListComponent(root, foundation, args);
