part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.network(
                  "https://miro.medium.com/v2/resize:fit:640/format:webp/1*IQ_IN2yxZ5MMs1QtUMavdQ.png",
              ).cornerRadius(20),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest Post", style: TextStyle(fontSize: 16 ),),
                  Text("See All", style: TextStyle(fontSize: 16),),
                ],
              ),
              SizedBox(height: 10.h,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  separatorBuilder: (context, index)=>SizedBox(height: 20.h,),
                  itemBuilder: (context, index){
                    return Row(
                      children: [
                        Image.network(
                          "https://miro.medium.com/v2/resize:fit:640/format:webp/1*IQ_IN2yxZ5MMs1QtUMavdQ.png",
                          height: 120.h,
                          width: 160.w,
                          fit: BoxFit.cover,
                        ).cornerRadius(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("Netflix will charge money for Password Sharing", style: TextStyle(
                               fontSize: 16
                             ),),
                            SizedBox(height: 5.h,),
                            Row(
                              children: [
                                Icon(FeatherIcons.clock),
                                Text("6 months ago")
                              ],
                            )
                          ],
                        )
                      ],
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
