// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';
// import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
//
// class Result extends StatefulWidget {
//   const Result({Key? key, required this.imageFile}) : super(key: key);
//
//   final XFile imageFile;
//
//   @override
//   State<Result> createState() => _ResultState();
// }
//
// class _ResultState extends State<Result> {
//   late Interpreter _interpreter;
//   List<String>? _labels;
//   String? _diseaseDetected;
//   double? _confidence;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadModel();
//   }
//
//   Future<void> _loadModel() async {
//     try {
//       // Load TensorFlow Lite model
//       _interpreter = await Interpreter.fromAsset('assets/model/model_unquant.tflite');
//
//       // Load labels
//       final labelFile = await File('assets/model/labels.txt').readAsLines();
//       _labels = labelFile;
//
//       // Detect skin disease
//       _detectDisease();
//     } catch (e) {
//       print("Error loading model: $e");
//     }
//   }
//
//   Future<void> _detectDisease() async {
//     try {
//       final inputImage = TensorImage.fromFile(File(widget.imageFile.path));
//       final imageProcessor = ImageProcessorBuilder()
//           .add(ResizeOp(224, 224, ResizeMethod.BILINEAR))
//           .add(NormalizeOp(0, 1)) // Adjust normalization based on your model
//           .build();
//       final processedImage = imageProcessor.process(inputImage);
//
//       final outputBuffer = TensorBuffer.createFixedSize([1, _labels!.length], TfLiteType.float32);
//       _interpreter.run(processedImage.buffer, outputBuffer.buffer);
//
//       final probabilities = outputBuffer.getDoubleList();
//       final maxIndex = probabilities.indexWhere((prob) => prob == probabilities.reduce((a, b) => a > b ? a : b));
//
//       setState(() {
//         _diseaseDetected = _labels![maxIndex];
//         _confidence = probabilities[maxIndex];
//       });
//     } catch (e) {
//       print("Error detecting disease: $e");
//     }
//   }
//
//   @override
//   void dispose() {
//     _interpreter.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Skin Disease Detection")),
//       body: Column(
//         children: [
//           Image.file(File(widget.imageFile.path)),
//           if (_diseaseDetected != null)
//             Text("Detected: $_diseaseDetected\nConfidence: ${(_confidence! * 100).toStringAsFixed(2)}%"),
//         ],
//       ),
//     );
//   }
// }
