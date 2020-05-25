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

class GoToRegistrationPage extends PagesEvent {
  final RegistrationData registrationData;

  GoToRegistrationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PagesEvent {
  final RegistrationData registrationData;

  GoToPreferencePage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PagesEvent {
  final RegistrationData registrationData;

  GoToAccountConfirmationPage(this.registrationData);

  @override
  List<Object> get props => [];
}
