import 'package:equatable/equatable.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';

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
