part of 'login_bloc.dart';


abstract class LoginEvent {}
class LoginAuthEvent extends LoginEvent{
  final String name;
  final String email;
  LoginAuthEvent(this.name,this.email);


}
