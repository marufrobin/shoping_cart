import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:shoping_cart/model/model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var listData = ModelData.genaretListData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: buildAppBar(),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: 160,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "${listData[index].productImageName}",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            "${listData[index].productName}",
                            style: TextStyle(fontSize: 24),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "⭐${listData[index].productRating}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "📍${listData[index].distance}",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "\$${listData[index].proudctPrice}",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                              ),
                              Text(
                                "${listData[index].quantity}",
                                style:
                                    TextStyle(fontSize: 60, color: Colors.red),
                              ),
                              Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: listData.length),
      ),
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
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
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
      foregroundColor: Colors.transparent,
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
      backgroundColor: Colors.transparent,
    );
  }
}
