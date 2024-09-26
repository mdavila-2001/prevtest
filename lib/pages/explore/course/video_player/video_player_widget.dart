import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideoPlayerWidget extends StatefulWidget {
  final Course course;
  final double aspectRatio;

  const VideoPlayerWidget(
      {super.key, required this.course, required this.aspectRatio});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: Consumer<DataProvider>(
        builder: (context, provider, child) {
          return provider.controller.isInitialised
              ? Stack(
                  children: <Widget>[
                    PodVideoPlayer(
                      controller: provider.controller,
                      frameAspectRatio: widget.aspectRatio,
                      backgroundColor: AppColor.primaryPurple,
                      podProgressBarConfig: const PodProgressBarConfig(
                        playingBarColor: AppColor.primaryPurple,
                        circleHandlerColor: AppColor.primaryPurple
                      ),
                      videoAspectRatio:
                          provider.controller.videoPlayerValue!.aspectRatio,
                      videoTitle: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 5.w),
                        child: Text(
                          dataProvider.pageSelector == 4
                              ? widget.course.testimonio.nombre
                              : widget.course
                                  .videos[dataProvider.videoSelector].titulo,
                          style: const TextStyle(
                              color: AppColor.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
