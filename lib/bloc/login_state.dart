part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}
 class LoginAuthState extends LoginState{
  final String name;
  final String email;
  LoginAuthState(this.name,this.email);
  
 }
