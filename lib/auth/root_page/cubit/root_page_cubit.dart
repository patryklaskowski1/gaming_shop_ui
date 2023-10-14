import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'root_page_state.dart';

class RootPageCubit extends Cubit<RootPageState> {
  RootPageCubit()
      : super(
          const RootPageState(
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
      const RootPageState(
        user: null,
        isLoading: true,
        errorMessage: '',
      ),
    );
    _streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        emit(
          RootPageState(
            user: user,
            isLoading: false,
            errorMessage: '',
          ),
        );
      },
    )..onError(
        (error) {
          emit(RootPageState(
            user: null,
            isLoading: false,
            errorMessage: error.toString(),
          ));
        },
      );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
