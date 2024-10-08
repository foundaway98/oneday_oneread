import 'package:flutter_application_1/views/article_page.dart';
import 'package:flutter_application_1/views/history_page.dart';
import 'package:flutter_application_1/views/login_page.dart';
import 'package:flutter_application_1/views/main_page.dart';
import 'package:flutter_application_1/views/splash_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashPage()),
  GoRoute(
      path: '/login',
      name: 'login_page',
      builder: (context, state) => const LoginPage()),
  GoRoute(
      path: '/main',
      name: "main_page",
      builder: (context, state) => const MainPage()),
  GoRoute(
      path: '/article',
      name: "article_page",
      builder: (context, state) => const ArticlePage()),
  GoRoute(
      path: '/history',
      name: "history_page",
      builder: (context, state) => const HistoryPage()),
]);
