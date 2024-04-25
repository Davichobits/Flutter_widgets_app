import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 8).getTheme(),
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: FilledButton(onPressed: (){}, child:  const Text('Hola'))
        )
      ),
    );
  }
}
