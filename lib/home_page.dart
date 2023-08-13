import 'package:e_theme_switch_bloc/Blocs/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeObj = BlocProvider.of<ThemeCubit>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text("app bar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${themeObj.isDark ? 'DARK' : 'LIGHT'}"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                themeObj.changeTheme();
              },
              child: Text("switch theme"),
            )
          ],
        ),
      ),
    );
  }
}
