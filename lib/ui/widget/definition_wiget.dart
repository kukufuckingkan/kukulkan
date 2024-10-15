import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../response/definition_response.dart';

class DefinitionWiget extends ConsumerWidget {
  final String sku;
  final List<DefinitionResponse> definitions;

   const DefinitionWiget({super.key, required this.sku, required this.definitions});
  

  @override
  Widget build(context, ref) {
     if(definitions.isEmpty){
      return Text('No definition');
     }
     return Text(definitions.first.text);
  }
}
