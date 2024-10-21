import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/features/shop/screens/order/widgets/order_list.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(FSizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
