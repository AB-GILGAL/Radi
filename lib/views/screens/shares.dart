import 'package:flutter/material.dart';
import 'package:radi_app/views/pages/all.dart';
import 'package:radi_app/views/pages/categories.dart';
import 'package:radi_app/widgets/custom_appbar.dart';

class SharesView extends StatefulWidget {
  const SharesView({super.key});

  @override
  State<SharesView> createState() => _SharesViewState();
}

class _SharesViewState extends State<SharesView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Shares"),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 56.2),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
              // height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 30, 0, 82),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TabBar(
                        labelStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 49.64),
                        unselectedLabelStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height / 49.64),
                        labelColor: const Color.fromARGB(255, 30, 0, 82),
                        unselectedLabelColor: Colors.white,
                        indicatorWeight: 2,
                        indicatorColor: Colors.white,
                        controller: tabController,
                        indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        tabs: [
                          Tab(
                              height:
                                  MediaQuery.of(context).size.height / 28.13,
                              text: "Categories"),
                          Tab(
                            height: MediaQuery.of(context).size.height / 28.13,
                            text: "All",
                          )
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: [CategoriesPage(), AllPage()]))
          ],
        ),
      ),
    );
  }
}
