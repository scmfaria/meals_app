import 'package:flutter/material.dart';

class CstegoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2, // proporção do tamanho do gridView
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        
      ],
    );
  }
}