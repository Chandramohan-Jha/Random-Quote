import 'dart:convert';
import 'package:http/http.dart';

class Api {
  late String quotes;
  late String author;

  Future<void> getData() async {
    try {
      Response response =
          await get(Uri.parse("https://zenquotes.io/api/random"));
      List dataList = jsonDecode(response.body);
      // List data = dataList[0];
      // String getQuotes = data["q"];
      // String getAuthor = data["a"];
      Map data = dataList[0];
      String getQuotes = data["q"];
      String getAuthor = data["a"];

      quotes = getQuotes;
      author = getAuthor;
    } catch (e) {
      quotes = "Na";
      author = "Na";
    }
  }
}
