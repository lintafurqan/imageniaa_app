import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'screens/Text2Img.dart';
import 'screens/Voice_Input_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/user_profile_screen.dart';
import 'screens/reconstruct.dart';
import 'screens/MemoryBasedImageGen.dart';
import 'screens/video_splash_screen.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagenia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: const Color(0xFF24293E),
          secondary: const Color(0xFF8EB8FF),
          surface: Colors.white,
          background: const Color(0xFFF4F5FC),
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const VideoSplashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/userProfile': (context) => const UserProfilePage(),
        '/text2img': (context) => const Text2Img(),
        '/memoryBasedImageGen': (context) => const MemoryBasedImageGen(), // Fixed route name
        '/reconstructImages': (context) => const ReconstructImagesScreen(),
        '/voiceInput': (context) => const VoiceInputScreen(),
      },
    );
  }
}
