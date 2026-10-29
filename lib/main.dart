
/*
import 'package:flutter/material.dart';
import 'package:fort_vault/screens/home/home_screen.dart';
import 'package:fort_vault/screens/menu/menu_screen.dart';
import 'package:fort_vault/screens/profile/profile_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/menu/menu_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/auth/welcome_screen.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/settings/settings_screen.dart'; 
import 'theme/app_theme.dart';
import 'utils/app_routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final ValueNotifier<String> appFontNotifier = ValueNotifier<String>('Inter');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://gxpitopdugqmxnckcwcd.supabase.co',
    publishableKey: 'sb_publishable_xvkOomNXQ4024A1GNPre0A_qG2gCbMh',
  );

  runApp(const AspireXApp());
}

class AspireXApp extends StatelessWidget {
  const AspireXApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder<String>(
      valueListenable: appFontNotifier,
      builder: (context, currentFont, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fort Vault',

         
          theme: AppTheme.getDarkTheme(currentFont),

         
          initialRoute: AppRoutes.splash,

          routes: {
            AppRoutes.splash: (context) => const SplashScreen(),
            AppRoutes.onboarding: (context) => const OnboardingScreen(),
            AppRoutes.welcome: (context) => const WelcomeScreen(),
            AppRoutes.login: (context) => const LoginScreen(),
            AppRoutes.register: (context) => const RegisterScreen(),
            AppRoutes.home: (context) => const HomeScreen(),
            AppRoutes.profile: (context) => const ProfileScreen(),
            AppRoutes.menu: (context) => const MenuScreen(),
            
  
            AppRoutes.settings: (context) => const SettingsScreen(),
          },
        );
      },
    );
  }
}*/




import 'package:flutter/material.dart';
import 'package:fort_vault/screens/home/home_screen.dart';
import 'package:fort_vault/screens/menu/menu_screen.dart';
import 'package:fort_vault/screens/profile/profile_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/menu/menu_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/auth/welcome_screen.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/settings/settings_screen.dart'; 
import 'theme/app_theme.dart';
import 'utils/app_routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

final ValueNotifier<String> appFontNotifier = ValueNotifier<String>('Inter');
final ValueNotifier<String> appThemeNotifier = ValueNotifier<String>('Dark');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final preferences = await SharedPreferences.getInstance();
  appFontNotifier.value = preferences.getString('settings_font') ?? 'Inter';
  appThemeNotifier.value = preferences.getString('settings_theme') ?? 'Dark';

  await Supabase.initialize(
     url: 'https://gxpitopdugqmxnckcwcd.supabase.co',
    publishableKey: 'sb_publishable_xvkOomNXQ4024A1GNPre0A_qG2gCbMh',
  );
  
  runApp(const AspireXApp());
}

class AspireXApp extends StatelessWidget {
  const AspireXApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder<String>(
      valueListenable: appFontNotifier,
      builder: (context, currentFont, child) {
        return ValueListenableBuilder<String>(
          valueListenable: appThemeNotifier,
          builder: (context, currentTheme, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fort Vault',

         
       theme: currentTheme == 'Light'
    ? AppTheme.getLightTheme(currentFont)
    : AppTheme.getDarkTheme(currentFont),
         
          initialRoute: AppRoutes.splash,

          routes: {
            AppRoutes.splash: (context) => const SplashScreen(),
            AppRoutes.onboarding: (context) => const OnboardingScreen(),
            AppRoutes.welcome: (context) => const WelcomeScreen(),
            AppRoutes.login: (context) => const LoginScreen(),
            AppRoutes.register: (context) => const RegisterScreen(),
            AppRoutes.home: (context) => const HomeScreen(),
            AppRoutes.profile: (context) => const ProfileScreen(),
            AppRoutes.menu: (context) => const MenuScreen(),
            
  
            AppRoutes.settings: (context) => const SettingsScreen(),
          },
        );
          },
        );
      },
    );
  }
}
