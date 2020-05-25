part of 'pages_bloc.dart';

abstract class PagesState extends Equatable {
  const PagesState();
}

class OnInitialPage extends PagesState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PagesState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PagesState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PagesState {
  @override
  List<Object> get props => [];
}

class OnRegistrationPage extends PagesState {
  final RegistrationData registrationData;

  OnRegistrationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class OnPreferencePage extends PagesState {
  final RegistrationData registrationData;

  OnPreferencePage(this.registrationData);

  @override
  List<Object> get props => [];
}

class OnAccountConfirmationPage extends PagesState {
  final RegistrationData registrationData;

  OnAccountConfirmationPage(this.registrationData);

  @override
  List<Object> get props => [];
}
