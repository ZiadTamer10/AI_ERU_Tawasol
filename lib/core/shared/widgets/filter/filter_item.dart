import 'package:flutter/material.dart';

class FilterItem<T> {
  final String label;
  final IconData icon;
  final Color color;
  final T? value; // null = "All"

  const FilterItem({
    required this.label,
    required this.icon,
    required this.color,
    required this.value,
  });
}
