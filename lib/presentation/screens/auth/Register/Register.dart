part of 'Register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor         ,
      body: SafeArea(
        child: FadedScaleAnimation(
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
                            child: Text("Register", style: TextStyle( color: MyColors.primaryColor, fontSize: 18.sp, fontWeight: FontWeight.w700),)
                        ),
                        SizedBox(height: 48.h,),
                        const Text("Email"),
                        SizedBox(height: 8.h,),
                        VxTextField(
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.r,
                          hint: "example@gmail.com",
                          prefixIcon: Icon(Icons.email_outlined,color: MyColors.primaryColor,),
                        ),

                        SizedBox(height: 20.h,),
                        const Text("Password"),
                        SizedBox(height: 8.h,),
                        VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderRadius: 10.r,
                          borderType: VxTextFieldBorderType.roundLine,
                          prefixIcon: Icon(Icons.lock_outline, color: MyColors.primaryColor,),
                          borderColor: MyColors.primaryColor,
                        ),

                        SizedBox(height: 20.h,),
                        const Text("Confirm Password"),
                        SizedBox(height: 8.h,),
                        VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderRadius: 10.r,
                          borderType: VxTextFieldBorderType.roundLine,
                          prefixIcon: Icon(Icons.lock_outline, color: MyColors.primaryColor,),
                          borderColor: MyColors.primaryColor,
                        ),
                        SizedBox(height: 50.h,),
                        PrimaryButton(title: "Register", onPressed: (){}),
                        SizedBox(height: 20.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?", style: TextStyle(
                                color: MyColors.primaryColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500
                            ),),
                            GestureDetector(
                              onTap: (){
                                AutoRouter.of(context).push(LoginRoute());
                              },
                              child: Text(" Login", style: TextStyle(
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
      ),
    );
  }
}
