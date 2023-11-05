import 'package:blogs_app/core/constants/my_colors.dart';
import 'package:blogs_app/favourite_screen.dart';
import 'package:blogs_app/home_screen_widget.dart';
import 'package:blogs_app/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex=0;
  List<String> pageTitles = ["Home", "Favourites", "Profile"];
  final List<Widget>tabs=[HomeScreenWidget(),FavouriteScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitles[pageIndex], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: MyColors.primaryColor,
        elevation: 0.0,
      ),
       drawer: MyDrawer(),
       body: Stack(
         children: [
           tabs.elementAt(pageIndex),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Align(
               alignment: Alignment(0.0,1.0),
               child: ClipRRect(
                 borderRadius: BorderRadius.all(Radius.circular(30)),
                 child: BottomNavigationBar(
                   selectedItemColor: Colors.white,
                   unselectedItemColor: Colors.grey,
                   showSelectedLabels: true,
                   showUnselectedLabels: false,
                   backgroundColor: Colors.black,
                   currentIndex: pageIndex,
                   onTap: (int index){
                     setState(() {
                       pageIndex=index;
                     });
                   },
                   items:[
                       BottomNavigationBarItem(
                         icon: Icon(CupertinoIcons.house_fill),
                       label: "Home"
                     ),
                       BottomNavigationBarItem(
                         icon: Icon(CupertinoIcons.heart_fill),
                       label: "Saved"
                     ),
                       BottomNavigationBarItem(
                         icon: Icon(CupertinoIcons.person_fill),
                       label: "Profile"
                     ),
                   ],
                 ),
               ),
             ),
           )
         ],
       ),
    );
  }
}
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width*0.6,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width*0.6,
              child: Image.asset('assets/fast_blog.png', fit: BoxFit.fill,),
            ),
            SizedBox(height: 40,),
            ListTile(
              textColor: Colors.black,
              title: Text('Favourites', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.black,
              title: Text('Profile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.black,
              title: Text('Setting', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.black,
              title: Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.black,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Log Out', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(width: 10,),
                  Icon(Icons.exit_to_app_rounded, color: Colors.black,)
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 30,),
             GestureDetector(
               onTap: (){
                 if (Scaffold.of(context).isDrawerOpen) {
                   Navigator.pop(context);
                 }
               },
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                        alignment: Alignment.center,
                        children:[
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.black,
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          Icon(Icons.arrow_back_rounded, color: Colors.white,)
                    ]
                    )
                  ],
                ),
             ),
          ],
        ),
      ),
    );
  }
}
