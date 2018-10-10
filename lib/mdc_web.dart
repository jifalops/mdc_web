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

export 'package:mdc_web/src/util.dart';

part 'src/animation.dart';
part 'src/auto_init.dart';
part 'src/base.dart';
part 'src/checkbox.dart';
part 'src/chips.dart';
part 'src/dialog.dart';
part 'src/dom.dart';
part 'src/drawer.dart';
part 'src/floating_label.dart';
part 'src/form_field.dart';
part 'src/icon_button.dart';
part 'src/line_ripple.dart';
part 'src/linear_progress.dart';
part 'src/list.dart';
part 'src/menu_surface.dart';
part 'src/menu.dart';
part 'src/notched_outline.dart';
part 'src/radio.dart';
part 'src/ripple.dart';
part 'src/select.dart';
part 'src/selection_control.dart';
part 'src/slider.dart';
part 'src/snackbar.dart';
part 'src/switch.dart';
part 'src/tab_bar.dart';
part 'src/tab_indicator.dart';
part 'src/tab_scroller.dart';
part 'src/tab.dart';
part 'src/text_field.dart';
part 'src/top_app_bar.dart';
