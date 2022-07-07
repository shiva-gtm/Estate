import 'package:estate/About/about.dart';
import 'package:estate/Home/home.dart';
import 'package:estate/EstateList/list.dart';
import 'package:estate/Login/login.dart';
import 'package:estate/EstateMapView/map.dart';
import 'package:estate/Profile/profile.dart';
import 'package:estate/Signup/signup.dart';
import 'package:estate/Verify/verify.dart';
import 'package:estate/Welcome/welcome.dart';
import 'package:estate/favourite/favourite.dart';

var appRoutes = {
  '/': (context) => const WelcomeScreen(),
  '/home': (context) => const HomeScreen(),
  '/signup': (context) => const SignupScreen(),
  '/login': (context) => const LoginScreen(),
  '/mapView': (context) => const MapScreen(),
  '/list': (context) => const ListScreen(),
  '/about': (context) => const AboutScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/favourite': (context) => const FavouriteScreen(),
  '/verify': (context) => const VerifyScreen(),
};
