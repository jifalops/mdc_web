import 'dart:html';
import 'package:mdc_web/mdc_web.dart';
import 'package:mdc_web/components.dart';

void main() {
  // MdcElement.renderQueue.listenOnce(() async {
  //   await afterNextRender();
  //   document.documentElement.style.visibility = 'visible';
  // });
  try {
    registerMdcWebComponents();
  } catch (e) {
    print('Failed to register web components.');
    print(
        'Currently in Dart 2.0 the development compiler (DDC) cannot register web components.');
    print(
        'See https://github.com/dart-lang/sdk/issues/27311 for more details.');
    print('A workaround is to serve in release mode ("webdev serve -r');
  }

  MdcButton button = querySelector('mdc-button');
  button.outlined = true;
  button.attributes['ripple'] = 'true';

  final topAppBar = MDCTopAppBar(querySelector('.mdc-top-app-bar'));

  final themeSwitch = MDCSwitch(querySelector('#theme-switch'));
  themeSwitch.checked = window.localStorage['theme'] == 'Dark';
  themeSwitch.listen('change', (e) {
    window.localStorage['theme'] = themeSwitch.checked ? 'Dark' : 'Light';
    final LinkElement styles = querySelector('#theme');
    window.animationFrame.then((time) => styles.href =
        themeSwitch.checked ? 'theme-dark.css' : 'theme-light.css');
  });

  final menuButton = querySelector('#overflow-menu-button');
  final menu = MDCMenu(querySelector('#overflow-menu'));
  menu.setAnchorMargin(AnchorMargin(top: topAppBar.root_.clientHeight / 2));
  menuButton.addEventListener('click', (event) {
    menu.open = !menu.open;
  });

  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  // autoInit();

  // querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
  querySelectorAll('.mdc-switch').forEach(MDCSwitch.attachTo);
  querySelectorAll('.mdc-icon-button').forEach(MDCIconButtonToggle.attachTo);
  querySelectorAll('.mdc-list').forEach(MDCList.attachTo);
  querySelectorAll('.mdc-menu').forEach(MDCMenu.attachTo);
  querySelectorAll('.mdc-menu-surface').forEach(MDCMenuSurface.attachTo);
}
