import 'package:inject/inject.dart';
import '../blocs/movies_bloc.dart';
import '../blocs/movie_detail_bloc.dart';
import '../blocs/bloc_base.dart';
import '../resources/repository.dart';
import '../resources/movie_api_provider.dart';
import '../resources/youtube_api_provider.dart';
import 'package:http/http.dart' show Client;

@module
class BlocModule{

  @provide
  @singleton
  Client client() => Client();

  @provide
  @singleton
  MovieApiProvider movieApiProvider(Client client) => MovieApiProvider(client);
  YoutubeApiProvider youtubeApiProvider(Client client) => YoutubeApiProvider(client);

  @provide
  @singleton
  Repository repository(MovieApiProvider movieApiProvider, YoutubeApiProvider youtubeApiProvider) => Repository(movieApiProvider,youtubeApiProvider);

  @provide
  BlocBase movieBloc(Repository repository) => MoviesBloc(repository);

  @provide
  BlocBase movieDetailBloc(Repository repository) => MovieDetailBloc(repository);
}