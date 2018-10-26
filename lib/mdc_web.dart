/// Dart wrapper for the `material-components-web` Javascript library.
///
/// Packages without javascript wrappers here are implemented in (s)css:
/// * Animation
/// * Buttons
/// * Cards
/// * Elevation
/// * Grid lists
/// * Image list
/// * Layout grid
/// * RTL
/// * Shape
/// * Theme
/// * Typography
@JS('mdc')
library mdc_web;

import 'dart:html';
import 'package:js/js.dart';
import 'package:meta/meta.dart';

export 'src/mdc_web/util.dart';

part 'src/mdc_web/animation.dart';
part 'src/mdc_web/auto_init.dart';
part 'src/mdc_web/base.dart';
part 'src/mdc_web/checkbox.dart';
part 'src/mdc_web/chips.dart';
part 'src/mdc_web/dialog.dart';
part 'src/mdc_web/dom.dart';
part 'src/mdc_web/drawer.dart';
part 'src/mdc_web/floating_label.dart';
part 'src/mdc_web/form_field.dart';
part 'src/mdc_web/icon_button.dart';
part 'src/mdc_web/line_ripple.dart';
part 'src/mdc_web/linear_progress.dart';
part 'src/mdc_web/list.dart';
part 'src/mdc_web/menu_surface.dart';
part 'src/mdc_web/menu.dart';
part 'src/mdc_web/notched_outline.dart';
part 'src/mdc_web/radio.dart';
part 'src/mdc_web/ripple.dart';
part 'src/mdc_web/select.dart';
part 'src/mdc_web/selection_control.dart';
part 'src/mdc_web/slider.dart';
part 'src/mdc_web/snackbar.dart';
part 'src/mdc_web/switch.dart';
part 'src/mdc_web/tab_bar.dart';
part 'src/mdc_web/tab_indicator.dart';
part 'src/mdc_web/tab_scroller.dart';
part 'src/mdc_web/tab.dart';
part 'src/mdc_web/text_field.dart';
part 'src/mdc_web/top_app_bar.dart';
