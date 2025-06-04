import 'package:flutter/material.dart';
import 'package:quertini/core/app/app.locator.dart';
import 'package:quertini/core/app/app.router.dart';
import 'package:quertini/ui/common/app_colors.dart'; // Import the new colors
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quertini',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: ThemeData(
        primaryColor: primaryBlueColor,
        primarySwatch: createMaterialColor(primaryBlueColor), // Use the helper
        // Optional: You might want to set other theme properties
        // to match the primary color for better consistency.
        // For example:
        scaffoldBackgroundColor: Colors.white, // Or a light shade of blue
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryBlueColor,
          elevation: 0, // Or a custom value
          titleTextStyle: TextStyle(
            color: Colors.white, // Or Colors.black depending on contrast
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white, // Or Colors.black
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryBlueColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryBlueColor,
            foregroundColor: Colors.white, // Text color for ElevatedButton
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: primaryBlueColor,
          // unselectedItemColor: Colors.grey, // Optional
        ),
        // textTheme: ... // Define custom text themes if needed
      ),
    );
  }
}
