part of mdc_web;

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
  MDCList._attach(Element root) : _js = _List.attachTo(root);

  MDCList(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _List _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _List(root)
          : args == null
              ? _List(root, foundation)
              : _List(root, foundation, args);

  _List get js => _js;
  final _List _js;

  void set vertical(bool value) => js.vertical = value;
  void set wrapFocus(bool value) => js.wrapFocus = value;
  void set singleSelection(bool value) => js.singleSelection = value;
  void set selectedIndex(int value) => js.selectedIndex = value;

  List<Element> get listElements => List.from(js.listElements);

  void layout() => js.layout();
}

@JS('list.MDCList')
abstract class _List extends _Component {
  external static _List attachTo(Element root);
  external factory _List(Element root, [foundation, args]);

  external void set vertical(bool value);
  external void set wrapFocus(bool value);
  external void set singleSelection(bool value);
  external void set selectedIndex(int value);

  external List get listElements;

  external void layout();
}
