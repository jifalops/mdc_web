import 'dart:html';
import 'package:meta/meta.dart';
import 'package:mdc_web/mdc_web.dart' show autoInit;
import 'package:mdc_web/components.dart' show afterNextRender;

/// The base class for all MDC HTML elements.
///
/// Descendent classes are expected implement these `static const` memebers:
/// * `tag` (String) The element's HTML tag (mdc-*)
/// * `customAttributes` (List<String>) The elements implemented attibutes,
/// or an empty array.
/// * `cssClasses` (List<String>) The CSS classes the underlying component
/// uses.
/// * `htmlTemplate` (String) The HTML template, using mustache syntax for
/// placeholders of each individual variable, except for CSS classes which can
/// be grouped into one template variable. Variable names must contain only
/// word characters and hyphens.
abstract class MdcElement extends HtmlElement {
  @protected
  @mustCallSuper
  MdcElement.created() : super.created() {
    _initialInnerHtml = innerHtml;
  }

  bool _hasUsedAutoInit = false;

  String get initialInnerHtml => _initialInnerHtml;
  String _initialInnerHtml;

  Iterable get _templateParts =>
      __templateParts ??= template.split(RegExp(_templateVarPattern));
  Iterable __templateParts;

  /// The class's [htmlTemplate].
  String get template;

  /// The values of the placeholders in the template, in the same order that
  /// they occur within the template.
  Iterable get templateValues;

  @protected
  void render() {
    renderQueue.add(() {
      assert(_templateParts.length == templateValues.length + 1);
      final buffer = StringBuffer(_templateParts.first);
      for (int i = 1; i < _templateParts.length; i++) {
        buffer
          ..write(templateValues.elementAt(i - 1))
          ..write(_templateParts.elementAt(i));
      }
      setInnerHtml(buffer.toString(), treeSanitizer: NodeTreeSanitizer.trusted);

      if (usesAutoInit && !_hasUsedAutoInit) {
        _hasUsedAutoInit = true;
        autoInit(this);
      }
    });
  }

  @override
  @mustCallSuper
  void attached() {
    render();
    renderQueue.listenOnce(() => afterFirstRender());
  }

  void afterFirstRender() {}

  /// Descendent classes should implement [bool attributeDidChange()] instead of
  /// this method.
  @override
  @deprecated
  void attributeChanged(String name, String oldValue, String newValue) {
    if (attributeDidChange(name, oldValue, newValue)) {
      render();
    }
  }

  /// Return `true` if one of the element's `customAttributes` changed, and
  /// the element will be re-rendered.
  bool attributeDidChange(String name, String oldValue, String newValue);

  bool get usesAutoInit => false;

  static const _templateVarPattern = r'{{[\w-]+}}';
  static final renderQueue = RenderQueue();
}

class RenderQueue {
  final _queue = <Function>[];
  final _listeners = Set<Function>();

  void add(Function f) {
    final first = _queue.isEmpty;
    // print('queuing render.');
    _queue.add(f);
    if (first) {
      // print('scheduling render.');
      afterNextRender().then((_) {
        // print('rendering.');
        _queue.forEach((fn) => fn());
        _queue.clear();
        _listeners.forEach((fn) => fn());
        _listeners.clear();
      });
    }
  }

  void listenOnce(Function f) => _listeners.add(f);
}
