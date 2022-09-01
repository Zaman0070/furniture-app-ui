import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/search_box.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../details/details_screen.dart';
import 'category_list.dart';
import 'product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 15,),
            child: Container(
              height: 55,
              width: double.infinity,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text('Dashboard',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  IconButton(
                    icon: SvgPicture.asset("assets/icons/notification.svg"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration:  const BoxDecoration(
                    image:DecorationImage(image: AssetImage('assets/images/blue.jpg',),fit: BoxFit.cover) ,
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  // here we use our demo procuts list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
