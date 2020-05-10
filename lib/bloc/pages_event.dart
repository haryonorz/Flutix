part of 'pages_bloc.dart';

abstract class PagesEvent extends Equatable {
  const PagesEvent();
}

class GoToSplashPage extends PagesEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PagesEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PagesEvent {
  @override
  List<Object> get props => [];
}
