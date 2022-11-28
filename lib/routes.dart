import 'package:twelve_minute_bootcamp/hero/HeroScreen.dart';
import 'package:twelve_minute_bootcamp/home/HomeScreen.dart';
import 'package:twelve_minute_bootcamp/list/ListScreen.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/hero': (context) => const HeroScreen(),
  '/list': (context) => const ListScreen(),
};
