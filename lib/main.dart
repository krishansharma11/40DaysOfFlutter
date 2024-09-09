import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiCallingScreen(),
    );
  }
}

class ApiCallingScreen extends StatefulWidget {
  @override
  BaseApiCalling createState() => BaseApiCalling();
}

class BaseApiCalling extends State<ApiCallingScreen> {
  List<dynamic> dataList = [];
  bool isLoading = true; // To handle loading state

  Future<void> fetchData() async {
    setState(() {
      isLoading = true; // Set loading to true when fetch starts
    });
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == 200) {
        setState(() {
          dataList = jsonDecode(response.body);
          isLoading = false; // Set loading to false when data is loaded
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load data: ${e.toString()}')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the screen is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data List Example"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(dataList[index]['title']),
                        subtitle: Text(dataList[index]['body']),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: fetchData,
                    child: Text("Reload Data"),
                  ),
                ),
              ],
            ),
    );
  }
}
