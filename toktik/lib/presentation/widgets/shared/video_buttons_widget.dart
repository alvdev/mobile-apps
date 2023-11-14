import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/config/helpers/human_number.dart';
import 'package:animate_do/animate_do.dart';

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
        const SizedBox(
          height: 10,
        ),
        _CustomIconButton(
            value: video.likes, iconData: Icons.remove_red_eye_outlined),
        const SizedBox(height: 10),
        SpinPerfect(
            duration: const Duration(seconds: 5),
            infinite: true,
            child: const _CustomIconButton(
                value: 0, iconData: Icons.play_circle_outline)),
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
        if (value > 0) Text(HumanNumber.compact(value.toDouble()))
      ],
    );
  }
}
