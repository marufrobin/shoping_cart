import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomBar(context),
    );
  }

  Container buildBottomBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          )),
      child: Column(
        children: [],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          )),
      title: Text(
        "My Cart",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.grey.shade300,
    );
  }
}
