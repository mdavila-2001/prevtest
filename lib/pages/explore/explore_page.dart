import 'package:cobanacademy/pages/explore/feed_custom_widget.dart';
import 'package:cobanacademy/pages/explore/feed_principal_widget.dart';
import 'package:cobanacademy/pages/explore/search_widget.dart';
import 'package:cobanacademy/pages/explore/tab_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../provider/data_provider.dart';
import '../../theme/colors.dart';

class ExplorePage extends StatefulWidget {
  final String email;
  BuildContext contexto;
  ExplorePage({super.key, required this.email, required this.contexto});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return Scaffold(
        backgroundColor: AppColor.primaryDarkPurple,
        body: Column(
          children: [
            SearchWidget(contexto: widget.contexto),
            SizedBox(
              height: 2.h,
            ),
            const TabCategoryWidget(),
            SizedBox(
              height: 2.h,
            ),
            dataProvider.categorySelector == 0
                ? FeedPrincipalWidget(
                    email: widget.email,
                  )
                : FeedCustomWidget(
                    email: widget.email,
                  )
          ],
        ));
  }
}
