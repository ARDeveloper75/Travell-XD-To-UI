import 'package:flutter/material.dart';
import 'package:travell_ui/src/components/discoverComponent.dart';
import 'package:travell_ui/src/components/editorsPickComponent.dart';

import 'package:travell_ui/src/components/authorMonthlyComponent.dart';
import 'package:travell_ui/src/components/banner_searchBarComponent.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerSearchBarComponent(),
            DiscoverComponent(),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            EditorsPickComponent(),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            AuthorMontlyComponent(),
          ],
        ),
      ),
    );
  }
}
