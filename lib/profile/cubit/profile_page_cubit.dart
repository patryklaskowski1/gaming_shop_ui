import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'profile_page_state.dart';

class ProfilePageCubit extends Cubit<ProfilePageState> {
  ProfilePageCubit()
      : super(
          const ProfilePageState(
            user: null,
            isLoading: false,
            errorMessage: '',
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> start() async {
    emit(
      const ProfilePageState(
        user: null,
        isLoading: true,
        errorMessage: '',
      ),
    );
    _streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        emit(
          ProfilePageState(
            user: user,
            isLoading: false,
            errorMessage: '',
          ),
        );
      },
    )..onError(
        (error) {
          emit(ProfilePageState(
              user: null, isLoading: false, errorMessage: error.toString()));
        },
      );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
