// To parse this JSON data, do
//
//     final reviewResponse = reviewResponseFromJson(jsonString);

import 'dart:convert';

import 'dart:io';

class ImageSelect {
  ImageSelect({
    this.url,
    this.id,
  });

  File url;
  String id;
}
