import 'package:flutter/material.dart';

class UserModel {
  final ImageProvider photo;
  final String name;
  final String message;
  UserModel({
    required this.photo,
    required this.name,
    required this.message,
  });
}

class StoryModel {
  final ImageProvider photo;
  final String name;
  StoryModel({
    required this.photo,
    required this.name,
  });
}
