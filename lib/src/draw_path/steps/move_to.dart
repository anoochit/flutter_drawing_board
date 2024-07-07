import 'operation_step.dart';

class MoveTo extends OperationStep {
  const MoveTo(this.x, this.y);

  factory MoveTo.fromJson(Map<String, dynamic> data) {
    return MoveTo(double.parse('${data['x']}'), double.parse('${data['y']}'));
  }

  final double x;
  final double y;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'type': 'moveTo',
      'x': x,
      'y': y,
    };
  }
}
