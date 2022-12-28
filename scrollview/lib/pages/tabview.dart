import 'package:flutter/material.dart';

class TabViewMenu extends StatefulWidget {
  const TabViewMenu({super.key});

  @override
  State<TabViewMenu> createState() => _TabViewMenuState();
}

class _TabViewMenuState extends State<TabViewMenu>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text("Tab View"),
              Spacer(),
              Container(
                child: Text("Ends"),
              )
            ],
          ),
          bottom: TabBar(
            labelColor: const Color.fromRGBO(4, 2, 46, 1),
            labelStyle: theme.textTheme.headline1,
            indicatorColor: const Color.fromRGBO(4, 2, 46, 1),
            unselectedLabelColor: Colors.white,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
            controller: tabController,
          ),
        ),
        body: Container(
          padding: EdgeInsets.zero,
          child: TabBarView(
            controller: tabController,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
