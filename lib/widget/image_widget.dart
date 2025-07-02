import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.image, this.height});
  final String image;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: CachedNetworkImage(
        imageUrl: image,
        placeholder: (context, url) => Center(
          child: CircularProgressIndicator(color: AppColors.textColor),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
        height: height ?? 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
