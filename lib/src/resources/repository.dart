import 'dart:async';
import 'movie_api_provider.dart';
import 'youtube_api_provider.dart';
import '../models/youtube_autocomplete_model.dart';
import '../models/item_model.dart';
import '../models/trailer_model.dart';
import 'package:inject/inject.dart';

class Repository {

  final MovieApiProvider moviesApiProvider;
  final YoutubeApiProvider youtubeApiProvider;

  @provide
  Repository(this.moviesApiProvider, this.youtubeApiProvider);

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);

  Future<YoutubeAutomcompleteModel> getAutoCompleteResults(String query) => youtubeApiProvider.fetchAutoCompleteSuggestions(query);
}
