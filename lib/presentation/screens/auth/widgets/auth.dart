part of 'auth_imports.dart';
@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/auth_bg.png'), fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset('assets/images/Quill_logo_white_without_bg.png', height: 200.h)),
                  Spacer(),
                  Text("Express Your Thoughts \nwith Quill.", style: TextStyle(color: Colors.white, fontSize: 28.sp, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20.h,),
                  PrimaryButton(title: "Login",
                      onPressed:(){
                        AutoRouter.of(context).push(const LoginRoute());
                      }
                  ),
                  SizedBox(height: 12.h,),
                  OutlineButton(title: "Register", onPressed: (){
                    AutoRouter.of(context).push(const RegisterRoute());
                  }),
                  SizedBox(height: 40.h,)
                ],
              ),
            ),
          ),
      ),
    );
  }
}
