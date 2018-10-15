import 'dart:html';
import 'base.dart';

class MdcButton extends MdcElement {
  static const tag = 'mdc-button';

  factory MdcButton() => Element.tag(tag);

  static const cssClasses = {
    'raised': 'mdc-button--raised',
    'unelevated': 'mdc-button--unelevated',
    'outlined': 'mdc-button--outlined',
    'dense': 'mdc-button--dense',
    'icon': 'mdc-button__icon'
  };

  static const rippleAttr = 'ripple';
  static const hrefAttr = 'href';
  static const targetAttr = 'target';
  static const raisedAttr = 'raised';
  static const unelevatedAttr = 'unelevated';
  static const outlinedAttr = 'outlined';
  static const denseAttr = 'dense';
  static const iconAttr = 'icon';

  static const customAttributes = [
    rippleAttr,
    hrefAttr,
    targetAttr,
    raisedAttr,
    unelevatedAttr,
    outlinedAttr,
    denseAttr,
    iconAttr
  ];

  static const htmlTemplate = '<{{tag}} {{linkAttrs}}'
      ' class="mdc-button {{classList}}"'
      ' {{ripple}}>'
      '{{icon}}'
      '<span class="mdc-component-content">{{content}}</span>'
      '</{{tag}}>';

  @override
  String get template => htmlTemplate;

  @override
  Iterable get templateValues {
    final tag = href != null ? 'a ' : 'button';
    final classList = [];
    if (raised) classList.add(cssClasses['raised']);
    if (unelevated) classList.add(cssClasses['unelevated']);
    if (outlined) classList.add(cssClasses['outlined']);
    if (dense) classList.add(cssClasses['dense']);
    return [
      // tag
      tag,
      // linkAttrs
      href != null
          ? 'href="$href"${target != null ? ' target="$target"' : ''} role="button"'
          : '',
      // classList
      classList.join(' '),
      // ripple
      ripple ? 'data-mdc-auto-init="MDCRipple"' : '',
      // icon
      icon != null
          ? icon.contains('fa-')
              ? '<i aria-hidden="true" class="${cssClasses['icon']} $icon"></i>'
              : '<i aria-hidden="true" class="${cssClasses['icon']} material-icons">$icon</i>'
          : '',
      // content
      this.querySelector('.mdc-component-content')?.innerHtml ??
          initialInnerHtml,
      // tag
      tag
    ];
  }

  bool _ripple;
  String _href;
  String _target;
  bool _raised;
  bool _unelevated;
  bool _outlined;
  bool _dense;
  String _icon;

  bool get ripple => _ripple;
  void set ripple(bool value) {
    if (value != _ripple) {
      value
          ? attributes[rippleAttr] = rippleAttr
          : attributes.remove(rippleAttr);
    }
  }

  /// The anchor's HTTP reference. If set, an anchor tag will be used instead of a button.
  String get href => _href;
  void set href(String value) {
    if (value != _href) attributes[hrefAttr] = value;
  }

  /// The anchor's target. If set, an anchor tag will be used instead of a button.
  String get target => _target;
  void set target(String value) {
    if (value != _target) attributes[targetAttr] = value;
  }

  bool get raised => _raised;
  void set raised(bool value) {
    if (value != _raised) {
      value
          ? attributes[raisedAttr] = raisedAttr
          : attributes.remove(raisedAttr);
    }
  }

  bool get unelevated => _unelevated;
  void set unelevated(bool value) {
    if (value != _unelevated) {
      value
          ? attributes[unelevatedAttr] = unelevatedAttr
          : attributes.remove(unelevatedAttr);
    }
  }

  bool get outlined => _outlined;
  void set outlined(bool value) {
    if (value != _outlined) {
      value
          ? attributes[outlinedAttr] = outlinedAttr
          : attributes.remove(outlinedAttr);
    }
  }

  bool get dense => _dense;
  void set dense(bool value) {
    if (value != _dense) {
      value ? attributes[denseAttr] = denseAttr : attributes.remove(denseAttr);
    }
  }

  /// An icon name from either material icons or font awesome.
  /// If you are using an SVG icon, leave this blank;
  /// the `mdc-button__icon` class, and `aria-hidden` and `xmlns` attributes
  /// will be added for you, but only if the SVG element is a child during the
  /// `attached()` lifecycle callback.
  String get icon => _icon;
  void set icon(String value) {
    if (value != _icon) attributes[iconAttr] = value;
  }

  /// Raised and unelevated buttons are both "contained".
  bool get contained => raised || unelevated;

  MdcButton.created() : super.created() {
    _ripple = attributes[rippleAttr] != null;
    _href = attributes[hrefAttr];
    _target = attributes[targetAttr];
    _raised = attributes[raisedAttr] != null;
    _unelevated = attributes[unelevatedAttr] != null;
    _outlined = attributes[outlinedAttr] != null;
    _dense = attributes[denseAttr] != null;
    _icon = attributes[iconAttr];
  }

  @override
  bool get usesAutoInit => ripple;

  @override
  void attached() {
    super.attached();
    final svg = querySelector('svg');
    if (svg != null) {
      svg.classes.add('mdc-button__icon');
      svg.attributes['aria-hidden'] = 'true';
      svg.attributes['xmlns'] = 'http://www.w3.org/2000/svg';
    }
  }

  @override
  bool attributeDidChange(String name, String oldValue, String newValue) {
    switch (name) {
      case rippleAttr:
        _ripple = newValue != null;
        return true;
      case hrefAttr:
        _href = newValue;
        return true;
      case targetAttr:
        _target = newValue;
        return true;
      case raisedAttr:
        _raised = newValue != null;
        return true;
      case unelevatedAttr:
        _unelevated = newValue != null;
        return true;
      case outlinedAttr:
        _outlined = newValue != null;
        return true;
      case denseAttr:
        _dense = newValue != null;
        return true;
      case iconAttr:
        _icon = newValue;
        return true;
      default:
        return false;
    }
  }
}
