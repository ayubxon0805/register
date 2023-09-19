import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginAuthEvent>(login);
  }

  void login(
    LoginAuthEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(LoginAuthState(event.name, event.email));
  }
}
