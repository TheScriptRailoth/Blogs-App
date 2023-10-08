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
  final List<Widget>tabs=[HomeScreenWidget(),FavouriteScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
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
