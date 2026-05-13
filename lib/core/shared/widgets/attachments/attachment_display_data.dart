import 'package:flutter/material.dart';

class AttachmentDisplayData {
  final String name;
  final String sizeLabel;
  final IconData icon;
  final Color iconColor;

  const AttachmentDisplayData({
    required this.name,
    required this.sizeLabel,
    required this.icon,
    required this.iconColor,
  });
}
