import 'package:pokedex/core/components/loading/loading_singlebox.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCaching extends StatelessWidget {
  final String imageUrl;
  final BoxFit? fit;

  const ImageCaching({
    super.key,
    required this.imageUrl,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit ?? BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      placeholder: (context, url) => const LoadingSingleBox(
        height: double.infinity,
      ),
      errorWidget: (context, url, error) => Assets.images.logoFull.image(
        width: double.infinity,
        height: double.infinity,
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
