import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';

extension AttachmentFileTypeUiExt on AttachmentFileType {
  IconData get icon {
    switch (this) {
      case AttachmentFileType.pdf:
        return Icons.picture_as_pdf_rounded;
      case AttachmentFileType.image:
        return Icons.image_rounded;
      case AttachmentFileType.doc:
        return Icons.description_rounded;
      case AttachmentFileType.other:
        return Icons.attach_file_rounded;
    }
  }

  Color get color {
    switch (this) {
      case AttachmentFileType.pdf:
        return const Color(0xffDC2626);
      case AttachmentFileType.image:
        return const Color(0xff7C3AED);
      case AttachmentFileType.doc:
        return const Color(0xff2563EB);
      case AttachmentFileType.other:
        return const Color(0xff64748B);
    }
  }
}
