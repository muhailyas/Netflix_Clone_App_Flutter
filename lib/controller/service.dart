import 'package:netflix_clone_app/core/constanst/constants.dart';
import 'package:netflix_clone_app/models/movie.dart';

List<Movie> searchResult(String search) {
  final result = searchListNotifeir.value
      .where(
          (movie) => movie.title.toLowerCase().contains(search.toLowerCase()))
      .toList();
  return result;
}
