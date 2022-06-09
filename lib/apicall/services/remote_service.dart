import 'package:flutter/material.dart';
import 'package:internship/apicall/model/post.dart';

import 'package:http/http.dart' as http;

import '../model/post.dart';

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return PostFromJson(json);
    }
  }
}
