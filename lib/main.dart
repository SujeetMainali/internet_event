import 'package:flutter/material.dart';
import 'package:inyernet_event/blocs/Internet_Bloc/internet_bloc.dart';
import 'package:inyernet_event/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocProvider(
      create: (context)=> InternetBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    
    );
  }
}
