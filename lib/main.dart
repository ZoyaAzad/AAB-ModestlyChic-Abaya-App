import 'package:flutter/material.dart';
import 'CountrySelectionPage.dart'; // Import the country selection page
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountrySelectionPage(), // Initial route is the country selection page
    );
  }
}
