import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/toggle.dart';

/// Hosts a collection of status icons.
class StatusTrayWidget extends StatelessWidget {
  final ValueChanged<bool> _callback;
  final GlobalKey<ToggleState> _toggleKey;

  final Tween<double> _backgroundOpacityTween =
      new Tween<double>(begin: 0.0, end: 0.33);

  final String _timeString='3:14';

  /// Constructor.
  StatusTrayWidget({
    GlobalKey<ToggleState> toggleKey,
    ValueChanged<bool> callback,
  })
      : _toggleKey = toggleKey,
        _callback = callback;

  @override
  Widget build(BuildContext context) => new Toggle(
        key: _toggleKey,
        callback: _callback,
        builder: (Animation<double> animation) {
          return new AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget child) => new Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(4.0),
                    color: Colors.grey.withOpacity(
                        _backgroundOpacityTween.evaluate(animation)),
                  ),
                  child: child,
                ),
            child: Center(
              child: Text(
                _timeString,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          );
        },
      );
}