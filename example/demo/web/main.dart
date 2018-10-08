import 'dart:html';
import 'package:mdc_web/mdc_web.dart';

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, autoInitEndEvent);
  autoInit();

  final topAppBar = MDCTopAppBar(querySelector('.mdc-top-app-bar'));
  listen(topAppBar, MDCTopAppBar.navEvent);

  /// Programmatically add a ripple to all elements with a class that includes
  /// "mdc-button".
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
}

/// Listen to events and print the event name and event details when they happen.
void Function(Event event) listen(Object target, String eventName) {
  final handler = (Event event) {
    if (event is CustomEvent)
      print('$eventName - ${event.detail}');
    else
      print('$eventName - $event');
  };
  if (target is Node)
    target.addEventListener(eventName, handler);
  else if (target is MDCComponent) target.listen(eventName, handler);
  return handler;
}
