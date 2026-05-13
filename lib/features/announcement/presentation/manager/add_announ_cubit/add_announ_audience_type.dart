import 'package:flutter/material.dart';

enum AddAnnounAudienceType { everyone, department, subject, level }

extension AddAnnounAudienceTypeExt on AddAnnounAudienceType {
  String get label {
    switch (this) {
      case AddAnnounAudienceType.everyone:
        return 'Everyone';
      case AddAnnounAudienceType.department:
        return 'Department';
      case AddAnnounAudienceType.subject:
        return 'Subject';
      case AddAnnounAudienceType.level:
        return 'Level';
    }
  }

  IconData get icon {
    switch (this) {
      case AddAnnounAudienceType.everyone:
        return Icons.public_rounded;
      case AddAnnounAudienceType.department:
        return Icons.account_balance_rounded;
      case AddAnnounAudienceType.subject:
        return Icons.menu_book_rounded;
      case AddAnnounAudienceType.level:
        return Icons.layers_rounded;
    }
  }
}
