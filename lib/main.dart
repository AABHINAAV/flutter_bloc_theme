import 'package:e_theme_switch_bloc/Blocs/cubit/theme_cubit.dart';
import 'package:e_theme_switch_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeCubit themeObj = BlocProvider.of<ThemeCubit>(context, listen: true);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeObj.isDark? ThemeData.dark() : ThemeData.light(),
      home: MyHomePage(),
    );
  }
}