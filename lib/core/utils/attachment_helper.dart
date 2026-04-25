import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AttachmentHelper {
  static Widget getIcon(String type) {
    if (type == 'image') {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          'https://i.ytimg.com/vi/lRdXqvpuVMk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLC2t7DLbhJyZl1HQUkJUPwOLUJyQw',
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
      );
    }

    switch (type) {
      case 'pdf':
        return SvgPicture.asset(AssetsData.pdfIcon, height: 60);
      case 'doc':
        return SvgPicture.asset(AssetsData.docIcon, height: 60);
      case 'ppt':
        return SvgPicture.asset(AssetsData.pptIcon, height: 60);
      case 'xls':
        return SvgPicture.asset(AssetsData.xlsIcon, height: 60);
      case 'video':
        return SvgPicture.asset(AssetsData.videoIcon, height: 60);
      case 'link':
        return SvgPicture.asset(AssetsData.linkIcon, height: 60);
      default:
        return Icon(Icons.insert_drive_file, size: 40);
    }
  }

  static Widget getAction(String type) {
    switch (type) {
      case 'video':
        return IconButton(
          onPressed: () {},
          icon: Icon(Icons.play_arrow, size: 32),
        );
      case 'link':
        return IconButton(
          onPressed: () {},
          icon: Icon(Icons.open_in_new, size: 32),
        );
      case 'image':
        return IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove_red_eye, size: 32),
        );
      default:
        return IconButton(
          onPressed: () {},
          icon: Icon(Icons.file_download_outlined, size: 32),
        );
    }
  }
}
