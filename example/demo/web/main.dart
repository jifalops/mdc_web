@JS()
library main;

import 'dart:html';
import 'dart:async';
import 'package:mdc_web/mdc_web.dart';
import 'main_demos.dart';
import 'package:js/js.dart';

Element _content;
Element get content => _content;

// @JS('mdc.autoInit')
// external void autoInit([Node root, void Function(String) warn]);

void printWarning() => print('init warning');

void main() async {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, autoInitEndEvent);
  autoInit();
  // doAutoInit().then((_) => print('initted1'));
  // doAutoInit().then((_) => print('initted2'));
  // await doAutoInit();
  // print('initted2');
  autoInit(document, allowInterop((s) => print('init warning')));
  // autoInit(document, allowInterop(() => print('init warning')));

  invokeCallback(allowInterop(() => print('callback')));

  test(allowInterop(() => print('hi')));

  addDyslexicOption();
  handleSelectedText();

  _content = querySelector('#content');

  topAppBar();
  // chips();
  snackbar();

  final kennel = new Kennel();
  print(stringify(kennel));

  print(await fetchGoodBoy());

  print(await fetchGoodBoys().toList());

  define('a-b', allowInterop(() => Test));
  document.body.append(Element.tag('a-b'));
}

class Test extends HtmlElement {
  Test.created() : super.created() {
    this.innerHtml = '<div>Test element</div>';
  }
}

@JS('customElements.define')
external void define(String tag, Function f);

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
    if (sel.toString().length > 0 && sel.rangeCount > 0) {
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

@JS()
external test(Function() callback);

@JS()
external void invokeCallback(void Function() callback);

@JS('Kennel')
abstract class _Kennel {
  external factory _Kennel();
  List<dynamic> get dogs;
}

class Kennel {
  final _jsKennel = new _Kennel();
  List<String> get dogs => new List.from(_jsKennel.dogs);
}

@JS('fetchGoodBoy')
external void _fetchGoodBoy(void Function(String) callback);

Future<String> fetchGoodBoy() {
  final completer = new Completer<String>();
  _fetchGoodBoy(allowInterop(completer.complete));
  return completer.future;
}

Future doAutoInit() {
  final completer = Completer();
  Future.delayed(
      Duration(milliseconds: 100),
      () => autoInit(
          document,
          allowInterop(
              (s) => completer.isCompleted ? null : completer.complete)));
  return completer.future;
}

@JS('fetchGoodBoys')
external void _fetchGoodBoys(void Function(String) callback, _Options options);

@JS()
@anonymous
abstract class _Options {
  external factory _Options({void Function() onDone});
}

Stream<String> fetchGoodBoys() {
  final controller = new StreamController<String>();
  _fetchGoodBoys(
    allowInterop(controller.add),
    new _Options(onDone: allowInterop(controller.close)),
  );
  return controller.stream;
}
