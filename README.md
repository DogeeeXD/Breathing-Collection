# Breathing Collection
A collection of Flutter widgets with breathing animation.

### List of widgets
* [BreathingGlowingButton](#breathingglowingbutton)
* More coming

## Installing

Add this to your package's pubspec.yaml file and run `flutter pub get`:

```yaml
dependencies:
  breathing_collection: ^0.1.3+1
```
Now in your Dart code, you can use:

```dart
import 'package:breathing_collection/breathing_collection.dart';
```
---

## Examples

#### BreathingGlowingButton
![Breathing Glowing Button](https://ghcdn.rawgit.org/DogeeeXD/Breathing-Collection/master/doc/screenshots/breathing_glowing_button.gif)

```dart
BreathingGlowingButton(
    height: 60.0,
    width: 60.0,
    buttonBackgroundColor = Color(0xFF373A49);
    glowColor = Color(0xFF777AF9);
    icon = Icons.mic;
    iconColor = Colors.white;
    onTap = () {
        // do something
    };
)
```

## Possible error

If you ran into a problem with this widget,
try setting sdk constraint to >=2.8.0 in your pubspec.yaml file.
```yaml
environment:
  sdk: ">=2.8.0 <3.0.0"
```
