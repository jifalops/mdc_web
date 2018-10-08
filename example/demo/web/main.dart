import 'dart:html';
import 'package:mdc_web/mdc_web.dart';

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, autoInitEndEvent);
  autoInit();

  final topAppBar = MDCTopAppBar(querySelector('.mdc-top-app-bar'));
  // topAppBar.listen(MDCTopAppBar.navEvent, print);
  listen(topAppBar, MDCTopAppBar.navEvent);
  topAppBar.emit(MDCTopAppBar.navEvent, {});

  /// Programmatically add a ripple to all elements with a class that includes
  /// "mdc-button".
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
}

/// Listen to events and print the event name and event details when they happen.
void Function(Event event) listen(Object target, String eventName) {
  final handler = (Event event) {
    if (event is CustomEvent)
      print('Event "$eventName" detail: ${event.detail}');
    else
      print('Event "$eventName": $event');
  };
  if (target is Node)
    target.addEventListener(eventName, handler);
  else if (target is MDCComponent) {
    target.listen(eventName, handler);
    print('MDCComponent');
    print(target.root_);
    target.root_.addEventListener(eventName, print);
  }
  return handler;
}
