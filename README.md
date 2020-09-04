# Breathing Collection
A collection of Flutter widgets with breathing animation.

### List of widgets
* [BreathingGlowingButton](#breathingglowingbutton)

## Installing

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  breathing_collection: ^0.1.1
```
---

## Examples

#### BreathingGlowingButton
![Breathing Glowing Button](doc/screenshots/breathing_glowing_button.gif?raw=true)

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

If you ran into a problem that with this widget,
try setting sdk constraint to >=2.8.0
```yaml
environment:
  sdk: ">=2.8.0 <3.0.0"
```
