import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';

class AddAnnounPickOption {
  final String label;
  final IconData icon;
  final Color color;
  final AttachmentFileType fileType;
  final String mockName;
  final String mockSize;

  const AddAnnounPickOption(
    this.label,
    this.icon,
    this.color,
    this.fileType,
    this.mockName,
    this.mockSize,
  );

  static const List<AddAnnounPickOption> all = [
    AddAnnounPickOption('PDF Document', Icons.picture_as_pdf_rounded,
        Color(0xffDC2626), AttachmentFileType.pdf, 'document.pdf', '2.3 MB'),
    AddAnnounPickOption('Image', Icons.image_rounded, Color(0xff7C3AED),
        AttachmentFileType.image, 'image.png', '1.1 MB'),
    AddAnnounPickOption('Word Doc', Icons.description_rounded,
        Color(0xff2563EB), AttachmentFileType.doc, 'document.docx', '0.4 MB'),
    AddAnnounPickOption(
        'PowerPoint',
        Icons.slideshow_rounded,
        Color(0xffEA580C),
        AttachmentFileType.other,
        'presentation.pptx',
        '3.7 MB'),
    AddAnnounPickOption('ZIP Archive', Icons.folder_zip_rounded,
        Color(0xff64748B), AttachmentFileType.other, 'files.zip', '5.2 MB'),
    AddAnnounPickOption('Link', Icons.link_rounded, Color(0xff059669),
        AttachmentFileType.other, 'https://resource-link', '—'),
  ];
}
