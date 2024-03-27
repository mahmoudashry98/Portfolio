import 'dart:html';

import 'package:mysite/app/sections/home/widgets/animation_text.dart';
import 'package:mysite/core/animations/zoom_animation.dart';
import 'package:mysite/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:mysite/changes/img.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/animations/entrance_fader.dart';
import 'package:mysite/core/configs/configs.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    const String cvUrl =
        'https://drive.google.com/file/d/1i9rSdXVhL75J7F6D6kMQUEWKrKQqxdRC/view?usp=sharing';

    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(hellotag,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w100,
                          )),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(StaticImage.hi, height: 40),
                      ),
                    ],
                  ),
                  Space.y(0.5.w)!,
                  Text(yourname,
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("A ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          )),
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: desktopList,
                      ),
                    ],
                  ),
                  Space.y(1.5.w)!,
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(miniDescription,
                        style: TextStyle(
                          fontSize: isFontSize(context, 20),
                          fontWeight: FontWeight.w400,
                          color: theme.textColor.withOpacity(0.6),
                        )),
                  ),
                  Space.y(3.w)!,
                  ColorChageButton(
                    text: 'download cv',
                    onTap: () {
                      downloadFile("assets/pdf/Mahmoud--Ashri-FlowCV-Resume-20240327.pdf");
                      // FileDownloader.downloadFile(
                      //     url: cvUrl,
                      //     name: "THE FILE NAME AFTER DOWNLOADING", //(optional)
                      //     onProgress: (String? fileName, double progress) {
                      //       print('FILE fileName HAS PROGRESS $progress');
                      //     },
                      //     onDownloadCompleted: (String path) {
                      //       print('FILE DOWNLOADED TO PATH: $path');
                      //     },
                      //     onDownloadError: (String error) {
                      //       print('DOWNLOAD ERROR: $error');
                      //     });
                      // _startDownload(
                      //     'https://drive.google.com/file/d/1i9rSdXVhL75J7F6D6kMQUEWKrKQqxdRC/view?usp=sharing',
                      //     'cv.pdf');
                    },
                  ),
                ],
              ),
            ),
            const ZoomAnimations(),
          ],
        ),
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = 'resume';
    anchorElement.click();
  }
  // void _startDownload(String url, String fileName) async {
  //   await FlutterDownloader.enqueue(
  //     url: url,
  //     savedDir: 'downloads/', // Change this to your desired directory
  //     fileName: fileName,
  //     showNotification: true,
  //     openFileFromNotification: true,
  //   );
  // }
}
