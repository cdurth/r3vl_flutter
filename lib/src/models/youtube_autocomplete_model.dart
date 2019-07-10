class YoutubeAutomcompleteModel {
  String _queryTerm;
  List<String> _results = [];

  YoutubeAutomcompleteModel.fromList(List parsedList) {
    _queryTerm = parsedList[0];

    List<String> temp = [];
    for(int i=0; i< parsedList[1].length; i++){
      temp.add(parsedList[1][i].toString());
    }
    _results = temp;
  }
  List<String> get results => _results;
  String get queryTerm => _queryTerm;
}
