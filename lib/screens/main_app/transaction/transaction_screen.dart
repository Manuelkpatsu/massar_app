import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/all_transactions.dart';
import 'widgets/not_paid.dart';
import 'widgets/shipping.dart';
import 'widgets/success.dart';

class TransactionScreen extends StatefulWidget {
  static const routeName = '/transaction';

  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen>
    with AutomaticKeepAliveClientMixin<TransactionScreen> {

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                backgroundColor: CustomColor.scaffoldBackgroundColor,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: TabBar(
                    indicatorColor: CustomColor.greenColor,
                    indicatorWeight: 1.5,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.zero,
                    labelColor: CustomColor.greenColor,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                    unselectedLabelColor: CustomColor.labelColor,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                    tabs: [
                      Tab(text: 'All Transactions'),
                      Tab(text: 'Shipping'),
                      Tab(text: 'Not Paid'),
                      Tab(text: 'Success'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              AllTransactions(),
              Shipping(),
              NotPaid(),
              Success(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
