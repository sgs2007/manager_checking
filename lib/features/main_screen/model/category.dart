import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Category with _$Person {
  const factory Category({
    required String name,
    required IconData icon,
  }) = _Category;
}
