import 'dart:html';
import 'package:mdc_web/mdc_web.dart';

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  autoInit();

  /// Programmatically add a ripple to all elements with a class that includes
  /// "mdc-button".
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
}
