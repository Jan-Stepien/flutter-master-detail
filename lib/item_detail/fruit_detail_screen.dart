import 'package:flutter/material.dart';
import 'package:master_detail/master/fruit_list_screen.dart';
import 'package:master_detail/shared/model/fruit.dart';

class FruitDetailScreen extends StatelessWidget {
  static const routeName = "/fruits/detail";

  const FruitDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FruitDetailArguments args = ModalRoute.of(context).settings.arguments;
    Fruit fruit = args.fruit;

    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              FruitImage(imageUrl: fruit.imageUrl),
              Text(
                fruit.name,
                style: TextStyle(
                  fontSize: 42,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Text(fruit.description,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify)
            ],
          ),
        ),
      ]),
    ));
  }
}

class FruitDetailArguments {
  final Fruit fruit;

  FruitDetailArguments({@required this.fruit});
}
