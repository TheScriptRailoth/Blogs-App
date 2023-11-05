part of 'splash_screen_imports.dart';
@RoutePage()

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    moveToOnBoard();
    super.initState();
  }
  moveToOnBoard() async{
    await Future.delayed(const Duration(seconds: 2), (){
      AutoRouter.of(context).push(const OnBoardScreenRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: FadedScaleAnimation(
        child: Center(
          child: Image.asset('assets/images/Quill_logo_with_bg.png',
          height: 300,
          width: 350,
          ),
        ),
      ),
    );
  }
}
