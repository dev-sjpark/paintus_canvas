part of drawing_canvas;

class DrawingController {
  /// 각 컨트롤 포인트간의 최소 거리
  final double threshold;

  /// 패스의 곡면률
  final double smoothRatio;

  /// 최대 속도
  final double velocityRange;

  /// 선을 그릴때 색상 및 두께 등의 외관을 결정하는 요소들
  DrawingOption option = DrawingOption();

  DrawingController({
    this.threshold = 3.0,
    this.smoothRatio = 0.65,
    this.velocityRange = 2.0,
  })  : assert(threshold > 0.0),
        assert(smoothRatio > 0.0),
        assert(velocityRange > 0.0);
}

class DrawingOption {
  /// 선 색상
  Color color;

  /// 라인 두께
  double strokeWidth;

  /// 라인 두꼐의 변동량
  double widthVolatilityRatio;

  DrawingOption({
    this.color = Colors.black,
    this.strokeWidth = 3,
    this.widthVolatilityRatio = 0.5,
  });
}