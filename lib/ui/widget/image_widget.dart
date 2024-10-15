import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/image_controller.dart';

class ImageWidget extends ConsumerWidget {
  final String sku;
  const ImageWidget(this.sku, {super.key});

  @override
  Widget build(context, ref) {
     var url = ref.read(imageController.notifier).getUrl(sku);
     return Expanded(child: Image.network(url,height: 70, width: 70,));
  }
}
