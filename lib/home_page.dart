import 'package:dotted_line/dotted_line.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildBottomBarText(context, "Delivery", "\$5.99"),
          buildBottomBarText(context, "Total Price", "\$5.99"),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black,
                ),
                child: Text(
                  "Pay \$20.99",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          )
        ],
      ),
    );
  }

  Row buildBottomBarText(
      BuildContext context, String strName, String priceAmount) {
    return Row(
      children: [
        Text(
          "$strName ",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        DottedLine(
            direction: Axis.horizontal, lineLength: 140, lineThickness: 2),
        Text(
          " ${priceAmount}",
          style: TextStyle(color: Colors.black, fontSize: 24),
        )
      ],
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
