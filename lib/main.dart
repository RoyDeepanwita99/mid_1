import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/RegistrationPage.dart';

//import 'package:flutter_application_1/login.dart';
//import 'package:flutter_application_1/assignment2.dart';

//import 'package:flutter_application_1/home.dart';
import 'package:localstorage/localstorage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        //home: const SimpleCalculator(),
        //home: const Calculator(),
        //home: CalculatorScreen(),
        //home: Assignment4(),
        // home: const LoginScreen(),
        //home: const assignment2(),
        //home: ImagesAndButton(),
        //home: const LoginScreen2(),
        //home: const assignment5_2(),
        initialRoute: '/Registration',
        routes: {
          '/Registration': (BuildContext context) => RegistrationPage(),
          '/SecondScreen': (BuildContext context) => HomePage(),
        });
  }
}
