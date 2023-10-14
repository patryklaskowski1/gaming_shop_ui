part of 'profile_page_cubit.dart';

@immutable
class ProfilePageState {
  final User? user;
  final bool isLoading;
  final String errorMessage;
  const ProfilePageState({
    required this.user,
    required this.isLoading,
    required this.errorMessage,
  });
}
