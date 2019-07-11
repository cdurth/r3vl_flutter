import 'package:flutter/material.dart';
import '../blocs/songSearch_bloc.dart';

import '../models/youtube_autocomplete_model.dart';

import 'components/InputComponent.dart';

class SongSearch extends StatefulWidget {
  final SongSearchBloc _bloc;

  SongSearch(this._bloc);

  @override
  State<StatefulWidget> createState() {
    return SongSearchState();
  }
}

class SongSearchState extends State<SongSearch> {
  TextEditingController editingController = TextEditingController();
  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    widget._bloc.init();
    super.initState();
  }

  @override
  void dispose() {
    widget._bloc.dispose();
    super.dispose();
  }

  void fetchSuggestions(String query) {
    var results = widget._bloc.fetchAutoComplete(query);
    print(results);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Search Song'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            InputComponent(labelText: 'Search', hintText: 'Search', icon: Icons.search, controller: editingController, onChanged: (value) => this.fetchSuggestions(value),),
            StreamBuilder(
              stream: widget._bloc.suggestions,
              builder:
                  (context, AsyncSnapshot<YoutubeAutomcompleteModel> snapshot) {
                if (snapshot.hasData) {
                  return buildAutoComplete(snapshot);
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAutoComplete(AsyncSnapshot<YoutubeAutomcompleteModel> snapshot) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: snapshot.data.results.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('${snapshot.data.results[index]}'),
        );
      },
    );
  }
}
