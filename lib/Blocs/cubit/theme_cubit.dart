import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool isDark = false;

  bool get isDarkValue => isDark;

  void changeTheme() {
    isDark = !isDark;
    emit(ThemeChanged());
  }
}
