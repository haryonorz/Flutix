part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PagesBloc>().add(prevPageEvent);
      }
    } else {
      prevPageEvent = GoToMainPage();
      context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));
      context.bloc<PagesBloc>().add(prevPageEvent);
    }

    return BlocBuilder<PagesBloc, PagesState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnLoginPage) ? SignInPage() : MainPage());
  }
}
