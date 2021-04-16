import 'package:flutter/material.dart';

class op extends StatelessWidget {
  final String mtext;
  op(this.mtext);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Center(child: Text(mtext))),
      body: Center(
        child: Text(mtext),
        ),
    );
  }
}