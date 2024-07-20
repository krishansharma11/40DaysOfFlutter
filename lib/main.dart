import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListViewClass(),
    );
  }
}

class MyListViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text("List View"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                  subtitle: Text("Sub Item Name"),
                  leading: Icon(Icons.arrow_forward),
                  trailing: Icon(Icons.laptop_chromebook),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.grey,
            width: 200,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "Separator List",
              style: TextStyle(color: Colors.red),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 100,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return ListTile(title: Text("Item $index"));
              },
            ),
          ),
          Container(
            color: Colors.grey,
            width: 200,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "Custom List",
              style: TextStyle(color: Colors.red),
            ),
          ),
          Expanded(
            child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  title: Text("Item $index"),
                  onTap: () {
                    print("Item $index tapped");
                  },
                );
              }),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add item");
          var alertDialog = const AlertDialog(
            title: Text("Add more items"),
            content: Text("10 Items added"),
          );
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alertDialog;
            },
          );
        },
        child: Icon(Icons.add),
        tooltip: "Add More Items",
      ),
    );
  }
}
