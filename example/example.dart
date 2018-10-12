// See the full example at https://github.com/jifalops/mdc_web/tree/master/example/simple.

/// ./simple/web/main.dart
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

/// ./simple/web/index.html
const indexHtml = '''
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="scaffolded-by" content="https://github.com/google/stagehand">
  <title>mdc_web Example</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="icon" href="favicon.ico">
  <!--
    This exposes the `mdc` global variable required by this package.
    For debugging purposes you can replace the ".min.js" extension with ".js".
  -->
  <script defer src="packages/mdc_web/material-components-web.min.js"></script>
  <script defer src="main.dart.js"></script>
</head>

<body>
  <h2>mdc_web Example</h2>

  <button class="mdc-button mdc-button--raised" data-mdc-auto-init="MDCRipple">Auto Init!</button>
  <button class="mdc-button primary">Primary Button</button>
  <button class="mdc-button secondary">Secondary Button</button>
  <button class="mdc-button tertiary mdc-button--outlined mdc-button--dense">Tertiary Button</button>

  <button class="mdc-icon-button" aria-label="Add to favorites" aria-pressed="false" data-mdc-auto-init="MDCIconButtonToggle">
    <i class="material-icons mdc-icon-button__icon mdc-icon-button__icon--on">favorite</i>
    <i class="material-icons mdc-icon-button__icon">favorite_border</i>
  </button>
</body>

</html>
''';

/// ./simple/web/styles.scss
const stylesScss = r'''
@import url(https://fonts.googleapis.com/css?family=Roboto);
@import url(https://fonts.googleapis.com/css?family=Material+Icons);

$mdc-theme-primary: #fcb8ab;
$mdc-theme-secondary: rgb(66, 189, 189);
$mdc-theme-on-primary: #442b2d;
$mdc-theme-on-secondary: #212121;

@import "material-components-web/material-components-web";

.mdc-button.primary {
  @include mdc-elevation(2.0);
  @include mdc-button-container-fill-color(secondary);
  @include mdc-button-ink-color(on-secondary);
  @include mdc-states;
  // Add ripple via scss mixins.
  // @include mdc-ripple-surface;
  // @include mdc-ripple-radius-bounded;
  // @include mdc-states-base-color(black);
  // @include mdc-states-hover-opacity(.1);
  // @include mdc-states-focus-opacity(.3);
  // @include mdc-states-press-opacity(.4);

}
.mdc-button.secondary {
  @include mdc-button-container-fill-color(primary);
  @include mdc-button-ink-color(on-primary);
  @include mdc-states;
}
.mdc-button.tertiary {
  @include mdc-button-outline-color(gray);
  @include mdc-button-ink-color(black);
  @include mdc-states;
}

html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  font-family: 'Roboto', sans-serif;
  font-size: 16px;
}
''';
