import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  var items = [
    FoodItem(id: 1, name: "ข้าวไข่เจียว", price: 25, image: "kao_kai_jeaw.jpg"),
    FoodItem(id: 2, name: "ข้าวหมูแดง", price: 30, image: "kao_moo_dang.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          FoodItem item = items[index];

          return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  print(item);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/${item.image}',
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        item.name,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
