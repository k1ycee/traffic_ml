import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

Future<List> predictionModel(List<List<double>> input1) async {
  final interpreter = await tfl.Interpreter.fromAsset('assets/traffic.tflite');
  var output0 = List.filled(1, 0).reshape([1, 1]);
  interpreter.run(input1, output0);
  return output0;
}
