import 'package:flutter/material.dart';
import 'package:master_detail/features/item_detail/fruit_detail_screen.dart';
import 'package:master_detail/shared/model/fruit.dart';
import 'package:master_detail/shared/service/data_service.dart';

class FruitListScreen extends StatefulWidget {
  static const routeName = "/fruits";
  @override
  _FruitListScreenState createState() => _FruitListScreenState();
}

class _FruitListScreenState extends State<FruitListScreen> {
  List<Fruit> fruits = [];
  List<Fruit> filteredFruits = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    DataService.fruits(context).then((value) => setState(() => {
          fruits = value,
          filteredFruits = value,
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
          child: Column(children: [
        ListTile(
          leading: Icon(Icons.search),
          title: TextField(
            controller: _searchController,
            decoration: InputDecoration(hintText: 'Search fruit'),
            onChanged: _fruitSearchChanged,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView.builder(
            itemCount: this.filteredFruits.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Align(
                      alignment: Alignment.center,
                      child: FruitImage(
                          imageUrl: this.filteredFruits[index].imageUrl)),
                ),
                title: Text(
                  this.filteredFruits[index].toString() ?? 'No fruit here',
                ),
                onTap: () => Navigator.of(context).pushNamed(
                    FruitDetailScreen.routeName,
                    arguments: FruitDetailArguments(
                        fruit: this.filteredFruits[index])),
              ),
            ),
          ),
        ),
      ])),
    ));
  }

  void _fruitSearchChanged(String value) {
    if (value.isEmpty) {
      filteredFruits = fruits;
    } else {
      filteredFruits = fruits
          .where(
              (fruit) => fruit.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    setState(() {});
  }
}

class FruitImage extends StatelessWidget {
  final String imageUrl;
  static String sampleImage = 'assets/photos/sampleFruit.png';

  const FruitImage({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: isUrlValid(this.imageUrl)
            ? Image.network(this.imageUrl)
            : Image.asset(sampleImage));
  }

  bool isUrlValid(String imageUrl) {
    return imageUrl != null && imageUrl.startsWith('https');
  }
}
