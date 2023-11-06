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
                  ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.primaryColor,
                          minimumSize: Size(MediaQuery.sizeOf(context).width.w, 44.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)
                          )
                      ),
                      child: Text("Login",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),)
                  ),
                  SizedBox(height: 12.h,),
                  ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          minimumSize: Size(MediaQuery.sizeOf(context).width.w, 44.h),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r)
                          )
                      ),
                      child: Text("Register",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),)
                  ),
                  SizedBox(height: 40.h,)
                ],
              ),
            ),
          ),
      ),
    );
  }
}
