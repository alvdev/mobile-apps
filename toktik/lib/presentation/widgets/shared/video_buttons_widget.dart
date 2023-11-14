import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/config/helpers/human_number.dart';

class VideoButtonsWidget extends StatelessWidget {
  final VideoPost video;

  const VideoButtonsWidget({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
        _CustomIconButton(
            value: video.views, iconData: Icons.remove_red_eye_outlined),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          ),
          onPressed: () => (),
        ),
        Text(HumanNumber.compact(value.toDouble())),
      ],
    );
  }
}
