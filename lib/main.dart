import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sub_project/common/widget/text_field/common_text_field.dart';
import 'package:sub_project/core/constant/app_text_style.dart';
import 'package:sub_project/core/theme/app_theme.dart';

import 'common/widget/button/button_base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.redAccent);
    final textTheme = Theme.of(context)
        .textTheme
        .copyWith()
        .apply(fontFamily: AppTextStyle.fontFamily);
    const systemUiOverlayStyle = SystemUiOverlayStyle.light;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(context, colorScheme, textTheme, systemUiOverlayStyle),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Scaffold(
            body: SizedBox.expand(
              child: Column(
                children: [
                  ButtonBase.text(
                    fixedSize: const Size(200, 100),
                    backgroundColor: Colors.red,
                    text: "Screen 1",
                    onPressed: () {
                      // context.push('/home2');
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CommonTextField(
                    initialValue: "value",
                    hintText: "Hint",
                  ),
                  const Text(
                    "Test font chữ",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Test font chữ",
                    style: AppTextStyle.body1(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          const Center(
            child: Text("Screen 2"),
          ),
          const Center(
            child: Text("Screen 3"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.push('/home2');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
