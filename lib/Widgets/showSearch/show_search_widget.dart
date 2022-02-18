import 'package:flutter/material.dart';

class ShowSearchWidget extends StatefulWidget {
  const ShowSearchWidget({Key? key}) : super(key: key);

  @override
  _ShowSearchWidgetState createState() => _ShowSearchWidgetState();
}

class _ShowSearchWidgetState extends State<ShowSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CostumSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class CostumSearchDelegate extends SearchDelegate {
  List<String> SearchTerms = [
    'Apple',
    'Banana',
    'Orange',
    'WaterMelon',
    'Bluebarries',
    'Respbarries',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchquery = [];
    for (var fruit in SearchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var result = matchquery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var fruit in SearchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var result = matchquery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
    
  }
}
