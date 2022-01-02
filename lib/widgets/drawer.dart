import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageUrl =
      "https://previews.123rf.com/images/wectors/wectors1705/wectors170500066/78149699-men-face-vector-illustration-style-flat-front.jpg?fj=1";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        padding: EdgeInsets.all(0),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Adish Jain"),
                  accountEmail: Text("adish@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text("Home",
                    style: TextStyle(color: Colors.white, fontSize: 22))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text("Profile",
                    style: TextStyle(color: Colors.white, fontSize: 22))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ),
                title: Text("Orders",
                    style: TextStyle(color: Colors.white, fontSize: 22))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                ),
                title: Text("WishList",
                    style: TextStyle(color: Colors.white, fontSize: 22))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.white,
                ),
                title: Text("Logout",
                    style: TextStyle(color: Colors.white, fontSize: 22))),
          ],
        ),
      ),
    );
  }
}
