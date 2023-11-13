part of 'Login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor         ,
      body: SafeArea(
        child: ListView(
          children:[
            Center(child: Image.asset('assets/images/Quill_logo_white_without_bg.png', height: 200.h)),
            SizedBox(height: 0.h,),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.r), topRight: Radius.circular(36.r)
                )
              ),
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h,),
                    Center(
                        child: Text("Login", style: TextStyle( color: MyColors.primaryColor, fontSize: 18.sp, fontWeight: FontWeight.w700),)
                    ),
                    SizedBox(height: 48.h,),
                    const Text("Email"),
                    SizedBox(height: 8.h,),
                    const VxTextField(
                      fillColor: Colors.transparent,
                      borderColor: MyColors.primaryColor,
                      borderType: VxTextFieldBorderType.roundLine,
                      borderRadius: 10,
                      prefixIcon: Icon(Icons.email_outlined,color: MyColors.primaryColor,),
                    ),
                    SizedBox(height: 20.h,),
                    const Text("Password"),
                    SizedBox(height: 8.h,),
                    const VxTextField(
                      isPassword: true,
                      obscureText: true,
                      fillColor: Colors.transparent,
                      borderRadius: 10,
                      borderType: VxTextFieldBorderType.roundLine,
                      prefixIcon: Icon(Icons.lock_outline, color: MyColors.primaryColor,),
                      borderColor: MyColors.primaryColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: _isChecked, onChanged:(bool? newValue){
                          setState(() {
                            _isChecked= newValue!;
                          });
                         },
                          activeColor: MyColors.primaryColor,
                        ),
                        Text('Remember Me', style: TextStyle(color: MyColors.primaryColor),),
                        Spacer(),
                        Text("Forgot Password?", style: TextStyle(color: MyColors.primaryColor),),
                        SizedBox(width: 15.w,)
                      ],
                    ),
                    SizedBox(height: 50.h,),
                    PrimaryButton(title: "Login", onPressed: (){}),
                    SizedBox(height: 20.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?", style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500
                        ),),
                        GestureDetector(
                          onTap: (){
                            AutoRouter.of(context).push(RegisterRoute());
                          },
                          child: Text(" Sign Up", style: TextStyle(
                            fontWeight: FontWeight.w700, color: MyColors.primaryColor,fontSize: 14.sp
                          ),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
