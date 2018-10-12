import 'dart:html';
import 'package:mdc_web/mdc_web.dart';
import 'main_demos.dart';

Element _content;
Element get content => _content;

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, autoInitEndEvent);
  autoInit();

  addDyslexicOption();
  handleSelectedText();

  _content = querySelector('#content');

  topAppBar();
  chips();
  snackbar();
}

Element addSection(String id, String title, String demoUrl) {
  final section = Element.section()..id = id;
  setInnerHtml(section, '''

    ''');
  content.append(section);
  return section;
}

void setInnerHtml(Element el, String html) =>
    el.setInnerHtml(html, treeSanitizer: NodeTreeSanitizer.trusted);

/// Listen to events and print the event name and event details when they happen.
void listen<T>(T target, final String eventName, [void Function(T) callback]) {
  final handler = (Event event) {
    print('Event "$eventName": ${stringify(event)}');
    if (callback != null) callback(target);
  };
  if (target is Node)
    target.addEventListener(eventName, handler);
  else if (target is MDCComponent) target.listen(eventName, handler);
}

/// I must be bored.
void addDyslexicOption() {
  final dyslexic = MDCSwitch(querySelector('.mdc-switch'));
  dyslexic.listen('change', (e) {
    document.body.className = dyslexic.checked ? 'dyslexic' : '';
  });
}

/// Because why not?
void handleSelectedText() {
  document.addEventListener('mouseup', (event) {
    final sel = window.getSelection();
    if (sel.toString().length > 0) {
      final range = sel.getRangeAt(0).cloneRange();
      try {
        range.surroundContents(SpanElement()..className = 'selected-text');
        sel.removeAllRanges();
        sel.addRange(range);
      } catch (e) {}
    }
  });

  document.addEventListener('mousedown', (event) {
    if (window.getSelection().toString().length == 0) {
      querySelectorAll('.selected-text').forEach((el) {
        el.replaceWith(Text(el.text));
      });
    }
  });
}
