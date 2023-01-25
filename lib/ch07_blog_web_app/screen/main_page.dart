import 'package:flutter/material.dart';
import 'package:hello_flutter2/ch07_blog_web_app/screen/api_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDK Sample'),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('DEBUG'),
              ),
            ),
            onTap: () => Navigator.of(context).pushNamed('/debug'),
          ),
        ],
      ),
      body: ApiList(),
    );
  }
}