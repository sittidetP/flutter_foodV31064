import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';

class FoodDetailPage extends StatefulWidget {
  static const routeName = '/foodDetail';

  const FoodDetailPage({Key? key}) : super(key: key);

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    var food = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
        appBar: AppBar(
          title: Text(food.name),
        ),
        body: Container(
          child: ListView(
            children: [
              Image(
                image: AssetImage('assets/images/${food.image}'),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ชื่อเมนู: ${food.name}",
                      style: TextStyle(fontSize: 21.0,),
                    ),
                    Text(
                      "ราคา: ${food.price} บาท",
                      style: TextStyle(fontSize: 21.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}