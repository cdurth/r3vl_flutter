import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/youtube_autocomplete_model.dart';
import 'package:inject/inject.dart';
import 'bloc_base.dart';

class SongSearchBloc extends BlocBase {

  final Repository _repository;
  PublishSubject<YoutubeAutomcompleteModel> _suggestions;

  @provide
  SongSearchBloc(this._repository);

  init(){
    _suggestions = PublishSubject<YoutubeAutomcompleteModel>();
  }

  Observable<YoutubeAutomcompleteModel> get suggestions => _suggestions.stream;

  fetchAutoComplete(String query) async {
    YoutubeAutomcompleteModel results = await _repository.getAutoCompleteResults(query);
    _suggestions.sink.add(results);
  }

  @override
  dispose() {
    _suggestions.close();
  }
}
