import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'blocs/movies_bloc.dart';
import 'blocs/movie_detail_bloc.dart';
import 'blocs/songSearch_bloc.dart';
import 'ui/movie_list.dart';
import 'ui/home.dart';
import 'ui/createParty.dart';
import 'ui/joinParty.dart';
import 'ui/songSearch.dart';

class App extends StatelessWidget {
  final MoviesBloc moviesBloc;
  final SongSearchBloc songSearchBloc;
  final MovieDetailBloc movieDetailBloc;

  @provide
  App(this.moviesBloc, this.movieDetailBloc, this.songSearchBloc) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Home',
      home: Home(title: 'Home'),
      routes:{
        'movies' :(context) => MovieList(moviesBloc),
        'joinParty':(context) => JoinParty(),
        'createParty':(context) => CreateParty(),
        'songSearch':(context) => SongSearch(songSearchBloc),
      }
    );
  }
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme: ThemeData.dark(),
//      initialRoute: '/',
//      onGenerateRoute: (settings){
//
//        if(settings.name == 'movieDetail'){
//          final Result result = settings.arguments;
//          return MaterialPageRoute(
//            builder: (context){
//              return MovieDetail(
//                movieDetailBloc,
//                result.title,
//                result.backdrop_path,
//                result.overview,
//                result.release_date,
//                result.vote_average.toString(),
//                result.id,
//              );
//            }
//          );
//        }
//      },
//      routes: {
//        '/': (context) => MovieList(moviesBloc),
//      },
//    );
//  }
}
