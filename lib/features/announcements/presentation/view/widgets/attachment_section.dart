import 'package:ai_eru_tawasol/core/utils/assets.dart';
import 'package:ai_eru_tawasol/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AttachmentSection extends StatelessWidget {
  const AttachmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Attachments', style: Styles.textStyle22),
          SizedBox(height: 10),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xffF9F9F9),
              border: Border.all(color: Color(0xffC4C4C4)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SvgPicture.asset(AssetsData.pdfIcon, height: 60),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('lecture4.pdf', style: Styles.textStyle18),
                    Text('2.4 MB', style: Styles.textStyle18),
                  ],
                ),
                Spacer(flex: 9),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.file_download_outlined, size: 32),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
