part of 'onBoard_imports.dart';
@RoutePage()
class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Image.asset('assets/images/Quill_logo.png',height: 100.h, width: 100.w,),
                SizedBox(height: 63.h,),
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/blogs_illustration.png', height: 333.h,width: 333.w,),
                        SizedBox(height: 20.h,),
                        Text("Embark on a Journey through a World of Words with Captivating Blogs and Stories.", textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/articles_illustrations.png', height: 333.h, width: 333.w,),
                        SizedBox(height: 20.h,),
                        Text("Deepen Your Knowledge and Boost Creativity with Thoughtful Articles.", textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/share_illustrations.png', height: 333.h, width: 333.w,),
                        SizedBox(height: 20.h,),
                        Text("Connect, Share Ideas, and Inspire in a Thriving Writing Community.", textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.black),),
                      ],
                    ),
                  ],
                ).expand(),
                ElevatedButton(
                    onPressed: ()=>AutoRouter.of(context).push(const AuthRoute()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize: Size(MediaQuery.sizeOf(context).width.w, 44.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)
                      )
                    ),
                    child: Text("Get Started",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),)
                ),
                SizedBox(height: 61.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Skip",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: MyColors.primaryColor),),
                      SmoothPageIndicator(
                          controller: onBoardViewModel.pageController,  // PageController
                          count:  3,
                          effect:  WormEffect(
                            activeDotColor: MyColors.primaryColor,
                            dotHeight: 8.h,
                            dotWidth: 12.w
                          ),  // your preferred effect
                          onDotClicked: (index){
                          }
                      ),
                      Text("Next",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: MyColors.primaryColor),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
