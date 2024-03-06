
import 'package:assessment_application_1/firebase_options.dart';
import 'package:assessment_application_1/screens/auth_screen.dart';
import 'package:assessment_application_1/screens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';

final firebaseauth = FirebaseAuth.instance;

void main() async {
  //await dotenv.load(fileName: "API_KEYS.env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final kDarkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 33, 103, 255),
    brightness: Brightness.dark,
  );

  final kLightColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 33, 103, 255),
    brightness: Brightness.light,
  );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: StreamBuilder(
          stream: firebaseauth.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const MainScreen();
            }
            return const AuthScreen();
          },
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: kLightColorScheme,
        ),
      );
}
