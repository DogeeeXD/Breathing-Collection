library breathing_glowing_button;

import 'package:flutter/material.dart';

/// A Breathing Glow Button widget.

class BreathingGlowingButton extends StatefulWidget {
  /// Width of the button.
  final double width;

  /// Height of the button.
  final double height;

  /// Default [buttonBackgroundColor] value: Color(0xFF373A49).
  final Color buttonBackgroundColor;

  /// Default [glowColor] value: Color(0xFF777AF9).
  final Color glowColor;

  /// Default [icon] value: Icons.mic.
  final IconData icon;

  /// Default [iconColor] value: Colors.white.
  final Color iconColor;

  /// Default [onTap] value: null
  final Function onTap;

  BreathingGlowingButton({
    this.width,
    this.height,
    this.buttonBackgroundColor,
    this.glowColor,
    this.icon,
    this.iconColor,
    this.onTap,
  });

  @override
  _BreathingGlowingButtonState createState() => _BreathingGlowingButtonState();
}

class _BreathingGlowingButtonState extends State<BreathingGlowingButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    /// Core animation control is done here.
    /// Animation completes in 2 seconds then repeat by reversing.
    /// [TENET]
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 10.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final double _width = widget.width;
    final double _height = widget.height;
    final Color _buttonBackgroundColor =
        widget.buttonBackgroundColor ?? Color(0xFF373A49);
    final Color _glowColor = widget.glowColor ?? Color(0xFF777AF9);
    final IconData _icon = widget.icon ?? Icons.mic;
    final Color _iconColor = widget.iconColor ?? Colors.white;
    final Function _onTap = widget.onTap;

    /// A simple breathing glowing button.
    /// Built using [Container] and [InkWell].
    return InkWell(
      child: Container(
        width: _width,
        height: _height,
        child: Icon(
          _icon,
          color: _iconColor,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _buttonBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: _glowColor,
              blurRadius: _animation.value,
              spreadRadius: _animation.value,
            ),
          ],
        ),
      ),
      onTap: _onTap,
    );
  }
}
