import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate<String> {
  final List<dynamic> data; // Your JSON data

  MySearchDelegate(this.data);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear,color: Colors.black,),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context,"");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<dynamic> filteredData = data
        .where((item) =>
        item['Text'].toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredData.length,
      itemBuilder: (context, index) {
        final item = filteredData[index];
        return Card(
          child: ListTile(
            title: Text(item['Text']),
            onTap: () {

              close(context, item['Text']);
            },
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
