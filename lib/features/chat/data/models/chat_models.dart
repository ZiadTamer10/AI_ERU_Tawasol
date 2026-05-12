import 'package:flutter/material.dart';

class ChatColors {
  static const Color primary = Color(0xff003096);
  static const Color primaryDark = Color(0xff001E6B);
  static const Color accent = Color(0xff3D6FFF);
  static const Color background = Color(0xffF0F4FF);
  static const Color surface = Colors.white;
  static const Color sentBubble = Color(0xff003096);
  static const Color receivedBubble = Color(0xffF1F5F9);
  static const Color sentText = Colors.white;
  static const Color receivedText = Color(0xff1E293B);
  static const Color textPrimary = Color(0xff1E293B);
  static const Color textSecondary = Color(0xff64748B);
  static const Color textHint = Color(0xffA0AABB);
  static const Color divider = Color(0xffE2E8F0);
  static const Color online = Color(0xff10B981);
  static const Color inputBg = Color(0xffF1F5F9);
  static const Color cardShadow = Color(0x0D000000);
}

enum UserRole { student, doctor, admin }

extension UserRoleExt on UserRole {
  String get label {
    switch (this) {
      case UserRole.student:
        return 'Student';
      case UserRole.doctor:
        return 'Doctor';
      case UserRole.admin:
        return 'Admin';
    }
  }

  Color get color {
    switch (this) {
      case UserRole.student:
        return const Color(0xff2563EB);
      case UserRole.doctor:
        return const Color(0xff7C3AED);
      case UserRole.admin:
        return const Color(0xffDC2626);
    }
  }

  Color get lightColor {
    switch (this) {
      case UserRole.student:
        return const Color(0xffDCEBFF);
      case UserRole.doctor:
        return const Color(0xffEDE9FE);
      case UserRole.admin:
        return const Color(0xffFEE2E2);
    }
  }

  IconData get icon {
    switch (this) {
      case UserRole.student:
        return Icons.school_rounded;
      case UserRole.doctor:
        return Icons.menu_book_rounded;
      case UserRole.admin:
        return Icons.admin_panel_settings_rounded;
    }
  }
}

enum MessageStatus { sending, sent, delivered, seen }

enum MessageType { text, image, voice, file }

class ChatUser {
  final String id;
  final String name;
  final String? avatarUrl;
  final UserRole role;
  final bool isOnline;
  final DateTime? lastSeen;
  final String? studentId;

  const ChatUser({
    required this.id,
    required this.name,
    this.avatarUrl,
    required this.role,
    this.isOnline = false,
    this.lastSeen,
    this.studentId,
  });

  String get initials {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name.isNotEmpty ? name[0].toUpperCase() : '?';
  }

  String get statusText {
    if (isOnline) return 'Online';
    if (lastSeen != null) {
      final diff = DateTime.now().difference(lastSeen!);
      if (diff.inMinutes < 60) return 'Last seen ${diff.inMinutes}m ago';
      if (diff.inHours < 24) return 'Last seen ${diff.inHours}h ago';
      return 'Last seen ${diff.inDays}d ago';
    }
    return 'Offline';
  }
}

class ChatMessage {
  final String id;
  final String senderId;
  final MessageType type;
  final String? text;
  final String? fileUrl;
  final String? fileName;
  final double? fileSizeMB;
  final Duration? voiceDuration;
  final DateTime timestamp;
  final MessageStatus status;
  final bool isFromMe;

  const ChatMessage({
    required this.id,
    required this.senderId,
    required this.type,
    this.text,
    this.fileUrl,
    this.fileName,
    this.fileSizeMB,
    this.voiceDuration,
    required this.timestamp,
    required this.status,
    required this.isFromMe,
  });
}

class ChatConversation {
  final String id;
  final ChatUser otherUser;
  final ChatMessage? lastMessage;
  final int unreadCount;
  final bool isPinned;

  const ChatConversation({
    required this.id,
    required this.otherUser,
    this.lastMessage,
    this.unreadCount = 0,
    this.isPinned = false,
  });
}

enum ChatOption { search, mute, block, clearChat }

extension ChatOptionExt on ChatOption {
  String get label {
    switch (this) {
      case ChatOption.search:
        return 'Search in Conversation';
      case ChatOption.mute:
        return 'Mute Notifications';
      case ChatOption.block:
        return 'Block User';
      case ChatOption.clearChat:
        return 'Clear Chat';
    }
  }

  IconData get icon {
    switch (this) {
      case ChatOption.search:
        return Icons.search_rounded;
      case ChatOption.mute:
        return Icons.notifications_off_rounded;
      case ChatOption.block:
        return Icons.block_rounded;
      case ChatOption.clearChat:
        return Icons.delete_outline_rounded;
    }
  }

  bool get isDestructive =>
      this == ChatOption.block || this == ChatOption.clearChat;
}

enum AttachmentOption { camera, gallery, document, audio, link }

extension AttachmentOptionExt on AttachmentOption {
  String get label {
    switch (this) {
      case AttachmentOption.camera:
        return 'Camera';
      case AttachmentOption.gallery:
        return 'Gallery';
      case AttachmentOption.document:
        return 'Document';
      case AttachmentOption.audio:
        return 'Audio';
      case AttachmentOption.link:
        return 'Link';
    }
  }

  IconData get icon {
    switch (this) {
      case AttachmentOption.camera:
        return Icons.camera_alt_rounded;
      case AttachmentOption.gallery:
        return Icons.photo_library_rounded;
      case AttachmentOption.document:
        return Icons.picture_as_pdf_rounded;
      case AttachmentOption.audio:
        return Icons.audiotrack_rounded;
      case AttachmentOption.link:
        return Icons.link_rounded;
    }
  }

  Color get color {
    switch (this) {
      case AttachmentOption.camera:
        return const Color(0xff2563EB);
      case AttachmentOption.gallery:
        return const Color(0xff7C3AED);
      case AttachmentOption.document:
        return const Color(0xffDC2626);
      case AttachmentOption.audio:
        return const Color(0xff059669);
      case AttachmentOption.link:
        return const Color(0xff0891B2);
    }
  }
}
