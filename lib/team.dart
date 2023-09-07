import 'package:flutter/material.dart';

class Team {
  final String abbreviation;
  final String city;
  final String name;
  final String conference;
  final String division;
  Team({
    required this.abbreviation,
    required this.city,
    required this.name,
    required this.conference,
    required this.division,
  });
}
