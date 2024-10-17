import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/image_controller.dart';

class ImageWidget extends ConsumerWidget {
  final int ordinal;
  const ImageWidget(this.ordinal, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(imageController.notifier).getByOrdinal(1), // Your async function
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();  // Show loading indicator
        } else if (snapshot.hasError) {
          return const Text('Error loading image');  // Handle error
        } else {
          var response = snapshot.data;  // Assuming response contains `data`
          var soundBytes = base64.decode(response!.data);  // Decode the base64
          var image = Image.memory(soundBytes,width: 90,height: 90,);  // Convert to image

          return Expanded(child: image);  // Display the image
        }
      },
    );
  }

}
