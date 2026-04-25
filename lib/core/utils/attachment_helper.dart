import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/constants/attachment_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AttachmentHelper {
  static Widget buildPreviewWidget(String type, {String? url}) {
    if (type == AttachmentTypes.image && url != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(url, height: 60, width: 60, fit: BoxFit.cover),
      );
    }

    switch (type) {
      case AttachmentTypes.pdf:
        return SvgPicture.asset(AssetsData.pdfIcon, height: 60);
      case AttachmentTypes.doc:
        return SvgPicture.asset(AssetsData.docIcon, height: 60);
      case AttachmentTypes.ppt:
        return SvgPicture.asset(AssetsData.pptIcon, height: 60);
      case AttachmentTypes.xls:
        return SvgPicture.asset(AssetsData.xlsIcon, height: 60);
      case AttachmentTypes.video:
        return SvgPicture.asset(AssetsData.videoIcon, height: 60);
      case AttachmentTypes.link:
        return SvgPicture.asset(AssetsData.linkIcon, height: 60);
      default:
        return const Icon(Icons.insert_drive_file, size: 60);
    }
  }

  static Widget buildActionButton(String type, {String? url}) {
    switch (type) {
      case AttachmentTypes.video:
        return IconButton(
          onPressed: () {},
          icon: const Icon(Icons.play_arrow, size: 32),
        );
      case AttachmentTypes.link:
        return IconButton(
          onPressed: () {},
          icon: const Icon(Icons.open_in_new, size: 32),
        );
      case AttachmentTypes.image:
        return IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove_red_eye, size: 32),
        );
      default:
        return IconButton(
          onPressed: () {},
          icon: const Icon(Icons.file_download_outlined, size: 32),
        );
    }
  }
}
