import 'package:pokedex/core/components/loading/loading_singlebox.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCaching extends StatelessWidget {
  final String imageUrl;
  final BoxFit? fit;
  final double width;
  final double height;

  const ImageCaching({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit ?? BoxFit.cover,
      width: width,
      height: height,
      placeholder: (context, url) => LoadingSingleBox(
        height: height,
      ),
      errorWidget: (context, url, error) => Assets.images.logoFull.image(
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}

CachedNetworkImageProvider baseImageDecorationComponent({
  required String url,
}) =>
  CachedNetworkImageProvider(
    url.isNotEmpty ? url : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxeAS3OYy1yQBs03eiKx1FBjuEVW-Hcy28AVvbyAOzSmrV5-kHMBQakzM8hKMsc7NN0Qo&usqp=CAU",
  );
