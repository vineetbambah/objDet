import 'package:flutter/material.dart';
import 'package:live_object_detection_ssd_mobilenet/models/recognition.dart';

/// Individual bounding box
class BoxWidget extends StatelessWidget {
  final Recognition result;

  const BoxWidget({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    // Color for bounding box

    return Positioned(
      left: result.renderLocation.left,
      top: result.renderLocation.top,
      width: result.renderLocation.width,
      height: result.renderLocation.height,
      child: SizedBox(
        width: result.renderLocation.width,
        height: result.renderLocation.height,
        // decoration: BoxDecoration(
        //     border: Border.all(color: color, width: 3),
        //     borderRadius: const BorderRadius.all(Radius.circular(2))),
        //   child: Align(
        //     alignment: Alignment.topLeft,
        //     child: FittedBox(
        //       child: Container(
        //         color: color,
        //         child: Row(
        //           mainAxisSize: MainAxisSize.min,
        //           children: <Widget>[
        //             Text(result.label),
        //             Text(" ${result.score.toStringAsFixed(2)}"),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
      ),
    );
  }
}
