library drawing_canvas;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:paintus_canvas/drawing_canvas.dart';

part './drawing_controller.dart';

class DrawingCanvasView extends StatelessWidget {
  const DrawingCanvasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      gestures: <Type, GestureRecognizerFactory>{
        ScaleGestureRecognizer: GestureRecognizerFactoryWithHandlers<ScaleGestureRecognizer>(
            () => ScaleGestureRecognizer(),
            (inst) {
              inst.onStart = _onStart;
              inst.onUpdate = _onUpdate;
              inst.onEnd = _onEnd;
            },
        ),
      },
      child: Container(
        color: Colors.transparent,
      ),
    );
  }

  void _onStart(ScaleStartDetails details) {
    if (details.pointerCount == 1) {
      _panStart(details);
    }
    else if (details.pointerCount == 2) {
      _scaleStart(details);
    }
  }

  /// invoked if pointer count is 1.
  void _panStart(ScaleStartDetails details) {

  }

  /// invoked if pointer count is 2.
  void _scaleStart(ScaleStartDetails details) {

  }

  void _onUpdate(ScaleUpdateDetails details) {
    if (details.pointerCount == 1) {
      _panUpdate(details);
    }
    else if (details.pointerCount == 2) {
      _scaleUpdate(details);
    }
  }

  /// invoked if pointer count is 1.
  void _panUpdate(ScaleUpdateDetails details) {

  }

  /// invoked if pointer count is 2.
  void _scaleUpdate(ScaleUpdateDetails details) {

  }

  void _onEnd(ScaleEndDetails details) {
    if (details.pointerCount == 1) {
      _panEnd(details);
    }
    else if (details.pointerCount == 2) {
      _scaleEnd(details);
    }
  }

  /// invoked if pointer count is 1.
  void _panEnd(ScaleEndDetails details) {

  }

  /// invoked if pointer count is 2.
  void _scaleEnd(ScaleEndDetails details) {

  }
}