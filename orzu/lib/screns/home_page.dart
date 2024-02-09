import 'package:flutter/material.dart';
import 'package:orzu/screns/detail_page.dart';
import 'package:orzu/screns/filtr_page.dart';
import 'package:orzu/screns/home_tabga.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: Card(
                  elevation: 5,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  child: ListTile(
                    onTap: () {},
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    leading: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Where to?",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    subtitle: const Text(
                      "Anywheare • Any week • Add guests",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  )),
            ),
            const SizedBox(height: 10)
          ],
        ),
        actions: [
          GestureDetector(
              child: InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => FiltirPage())),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  color: Colors.white,
                  shape: BoxShape.circle),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Icon(
                  Icons.edit,
                  weight: 30,
                ),
              ),
            ),
          )),
          const SizedBox(width: 20)
        ],
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Expanded(
                child: TabBar(
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    onTap: (value) {
                      setState(() {});
                    },
                    tabAlignment: TabAlignment.start,
                    controller: _tabController,
                    dividerColor: Colors.grey,
                    tabs: [
                  Tab(
                      icon: Icon(
                        Icons.air_sharp,
                        weight: 30,
                      ),
                      text: 'Caves'),
                  Tab(
                      icon: Icon(
                        Icons.air_sharp,
                        weight: 30,
                      ),
                      text: 'Tropical'),
                  Tab(
                      icon: Icon(
                        Icons.air_sharp,
                        weight: 30,
                      ),
                      text: 'Casas particulares'),
                  Tab(
                      icon: Icon(
                        Icons.air_sharp,
                        weight: 30,
                      ),
                      text: "Shepherd's huts"),
                ]))),
      ),
      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: _screens),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _tabController.index == 0
          ? const SizedBox.shrink()
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               
                _tabController.index == 0
                    ? SizedBox(height: 50)
                    : const SizedBox.shrink()
              ],
            ),
    );
  }

  final List<Widget> _screens = const [
    HomeTabGa(),
        HomeTabGa(),
    HomeTabGa(),
    HomeTabGa(),


  ];
}
    

