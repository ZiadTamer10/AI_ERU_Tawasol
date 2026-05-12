// ---------- Enums ----------

enum AnnounRole { student, doctor, admin }

enum AnnouncementPriority { normal, important, urgent }

enum AnnouncementType { normal, materialFile, assignment }

enum AnnouncementTarget {
  all,
  course,
  courseDepartment,
  department,
  level,
  student,
}

extension AnnouncementTargetExt on AnnouncementTarget {
  String get label {
    switch (this) {
      case AnnouncementTarget.all:
        return 'All Students';
      case AnnouncementTarget.course:
        return 'Course';
      case AnnouncementTarget.courseDepartment:
        return 'Dept. Course';
      case AnnouncementTarget.department:
        return 'Department';
      case AnnouncementTarget.level:
        return 'Level';
      case AnnouncementTarget.student:
        return 'Student';
    }
  }
}

enum AttachmentFileType { pdf, image, doc, other }

// ---------- Data Classes ----------

class AnnounAttachment {
  final String name;
  final String url;
  final double sizeMB;
  final AttachmentFileType fileType;

  const AnnounAttachment({
    required this.name,
    required this.url,
    required this.sizeMB,
    required this.fileType,
  });
}

class Announcement {
  final String id;
  final String title;
  final String body;
  final String doctorName;
  final String subjectName;
  final String subjectCode;
  final AnnouncementType type;
  final AnnouncementTarget target;
  final AnnouncementPriority priority;
  final DateTime createdAt;
  final bool isRead;
  final List<AnnounAttachment> attachments;
  final bool isFromAdmin;

  const Announcement({
    required this.id,
    required this.title,
    required this.body,
    required this.doctorName,
    required this.subjectName,
    required this.subjectCode,
    required this.type,
    required this.target,
    required this.priority,
    required this.createdAt,
    this.isRead = false,
    this.attachments = const [],
    this.isFromAdmin = false,
  });

  String get doctorInitials {
    final parts = doctorName.trim().split(' ');
    if (parts.length >= 2) return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    return doctorName.isNotEmpty ? doctorName[0].toUpperCase() : '?';
  }

  String get subjectInitials {
    final words = subjectName.trim().split(' ');
    if (words.length >= 2) return '${words[0][0]}${words[1][0]}'.toUpperCase();
    return subjectName.isNotEmpty ? subjectName[0].toUpperCase() : '?';
  }

  String get timeAgo {
    final diff = DateTime.now().difference(createdAt);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    return formattedDate;
  }

  String get formattedDate {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return '${months[createdAt.month - 1]} ${createdAt.day}, ${createdAt.year}';
  }

  String get formattedTime {
    final h = createdAt.hour;
    final hour = h > 12 ? h - 12 : (h == 0 ? 12 : h);
    final minute = createdAt.minute.toString().padLeft(2, '0');
    final period = h >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  }
}
