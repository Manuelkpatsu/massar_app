import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/address_picker.dart';
import 'widgets/home_text.dart';
import 'widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white),
            leading: IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(Icons.sort_outlined),
            ),
            title: const HomeText(),
            centerTitle: false,
            actions: [
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(Icons.markunread_outlined),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_rounded),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
            ],
            backgroundColor: CustomColor.primaryColor,
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 124 + kToolbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.0,
              background: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 110),
                    AddressPicker(
                      onTap: () {},
                      address: 'St 394 Jackson, New york  United Status',
                    ),
                    const SizedBox(height: 20),
                    SearchTextField(controller: _searchController),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
