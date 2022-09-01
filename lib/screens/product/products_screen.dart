import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kPrimaryColor,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/marble.jpg'),fit: BoxFit.cover)
          ),
          child: Body()),
    );
  }


}
