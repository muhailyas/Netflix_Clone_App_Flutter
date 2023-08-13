import 'package:flutter/material.dart';
import '../../models/movie.dart';

const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);

// Border Radius
final kRadius10 = BorderRadius.circular(10);
final kRadius20 = BorderRadius.circular(20);

// text styles

TextStyle homeTitleTextStyle =
    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

// api key

const apiKey = "13bb3c1b9a787771ffcf71cc44d4536c";
// image path from api image
const imagePath = 'https://image.tmdb.org/t/p/w500';

// notifiers
ValueNotifier<List<Movie>> trendingNowListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> topRatedListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> top10TvShowsInIndiaTodayListNotifeir =
    ValueNotifier([]);
ValueNotifier<List<Movie>> upComingListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> searchListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> searchResultListNotifeir = ValueNotifier([]);
