part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

// * states
final class ThemeInitial extends ThemeState {}

final class ThemeChanged extends ThemeState {}
