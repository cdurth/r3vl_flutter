import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client, Response;
import '../models/item_model.dart';
import '../models/youtube_autocomplete_model.dart';
import 'package:inject/inject.dart';

class YoutubeApiProvider {
  final Client client;
  final _apiKey = 'AIzaSyDBqLFqDcLJakjzPPDf9GyeRNdTajDUesg';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  @provide
  YoutubeApiProvider(this.client);

  Future<ItemModel> fetchSearchResult() async {
    Response response;
    if(_apiKey != 'api-key') {
      response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    }else{
      throw Exception('Please add your API key');
    }
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<YoutubeAutomcompleteModel> fetchAutoCompleteSuggestions(String query) async {
    if(query == "") return null;
    Response response;
    response = await client.get("http://suggestqueries.google.com/complete/search?client=firefox&ds=yt&q="+ query);
    var results = (json.decode(response.body) as List);
    return YoutubeAutomcompleteModel.fromList(results);
  }
}