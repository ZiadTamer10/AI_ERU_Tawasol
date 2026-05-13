import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';

extension ContentFileTypeUiExt on ContentFileType {
  IconData get icon {
    switch (this) {
      case ContentFileType.pdf:
        return Icons.picture_as_pdf_rounded;
      case ContentFileType.image:
        return Icons.image_rounded;
      case ContentFileType.doc:
        return Icons.description_rounded;
      case ContentFileType.other:
        return Icons.attach_file_rounded;
    }
  }

  Color get color {
    switch (this) {
      case ContentFileType.pdf:
        return const Color(0xffDC2626);
      case ContentFileType.image:
        return const Color(0xff7C3AED);
      case ContentFileType.doc:
        return const Color(0xff2563EB);
      case ContentFileType.other:
        return const Color(0xff64748B);
    }
  }
}
