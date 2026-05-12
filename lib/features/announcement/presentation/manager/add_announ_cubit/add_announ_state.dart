part of 'add_announ_cubit.dart';

class AddAnnounAttachmentItem extends Equatable {
  final String id;
  final String name;
  final String sizeLabel;
  final AttachmentFileType fileType;

  const AddAnnounAttachmentItem({
    required this.id,
    required this.name,
    required this.sizeLabel,
    required this.fileType,
  });

  @override
  List<Object?> get props => [id, name, sizeLabel, fileType];
}

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

class AddAnnounState extends Equatable {
  final AnnounRole role;
  final AnnouncementType postType;
  final String title;
  final String details;
  final AddAnnounAudienceType? audienceType;
  final Set<String> selectedOptions;
  final List<AddAnnounAttachmentItem> attachments;
  final bool isPosting;
  final bool isPosted;
  final String? error;

  const AddAnnounState({
    required this.role,
    required this.postType,
    required this.title,
    required this.details,
    this.audienceType,
    required this.selectedOptions,
    this.attachments = const [],
    this.isPosting = false,
    this.isPosted = false,
    this.error,
  });

  factory AddAnnounState.initial(AnnounRole role) => AddAnnounState(
        role: role,
        postType: AnnouncementType.normal,
        title: '',
        details: '',
        selectedOptions: const {},
      );

  bool get supportsAttachments =>
      postType == AnnouncementType.materialFile ||
      postType == AnnouncementType.assignment;

  bool get canPost {
    if (title.trim().isEmpty || details.trim().isEmpty) return false;
    if (audienceType == null) return false;
    if (audienceType == AddAnnounAudienceType.everyone) return true;
    return selectedOptions.isNotEmpty;
  }

  List<AddAnnounAudienceType> audienceTypesForRole() {
    switch (role) {
      case AnnounRole.doctor:
        return [
          AddAnnounAudienceType.everyone,
          AddAnnounAudienceType.department,
          AddAnnounAudienceType.subject,
        ];
      case AnnounRole.admin:
        return [
          AddAnnounAudienceType.everyone,
          AddAnnounAudienceType.department,
          AddAnnounAudienceType.level,
        ];
      case AnnounRole.student:
        return [];
    }
  }

  @override
  List<Object?> get props => [
        role,
        postType,
        title,
        details,
        audienceType,
        selectedOptions,
        attachments,
        isPosting,
        isPosted,
        error,
      ];

  AddAnnounState copyWith({
    AnnouncementType? postType,
    String? title,
    String? details,
    AddAnnounAudienceType? audienceType,
    Set<String>? selectedOptions,
    List<AddAnnounAttachmentItem>? attachments,
    bool? isPosting,
    bool? isPosted,
    String? error,
    bool clearError = false,
  }) {
    return AddAnnounState(
      role: role,
      postType: postType ?? this.postType,
      title: title ?? this.title,
      details: details ?? this.details,
      audienceType: audienceType ?? this.audienceType,
      selectedOptions: selectedOptions ?? this.selectedOptions,
      attachments: attachments ?? this.attachments,
      isPosting: isPosting ?? this.isPosting,
      isPosted: isPosted ?? this.isPosted,
      error: clearError ? null : (error ?? this.error),
    );
  }
}
