import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widget row'),
      ),
      body: Row(
        children: const [
          Text('row 1'),
          Text('row 2'),
          Text('row 3'),
          Text('row 4'),
        ],
      ),
    );
  }
}
