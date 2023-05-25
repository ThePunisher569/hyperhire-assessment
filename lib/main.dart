import 'package:flutter/material.dart';

import 'body.dart';
import 'comments.dart';
import 'header.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 700
          ? EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: MediaQuery.of(context).size.width * 0.2,
            )
          : const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            '자유톡',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Icon(
              Icons.notifications_outlined,
              color: Theme.of(context).disabledColor,
            )
          ],
        ),
        bottomNavigationBar: ListTile(
          leading: const Icon(Icons.image),
          title: const TextField(
            decoration: InputDecoration(
              hintText: '댓글을 남겨주세요.',
            ),
          ),
          trailing: Text(
            '등록',
            style: TextStyle(color: Theme.of(context).hintColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              HeaderTile(),
              SizedBox(
                height: 16,
              ),
              Body(),
              Divider(),
              CommentsList()
            ],
          ),
        ),
      ),
    );
  }
}
