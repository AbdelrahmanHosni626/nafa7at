import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafa7at/core/constants/app_constants.dart';
import 'package:nafa7at/core/util/assets_manager.dart';

class Nafa7atCachedNetworkImage extends CachedNetworkImage {
  Nafa7atCachedNetworkImage({
    super.key,
    required super.imageUrl,
    super.httpHeaders,
    super.imageBuilder,
    super.placeholder,
    super.progressIndicatorBuilder,
    super.fadeOutDuration = const Duration(milliseconds: 300),
    super.fadeOutCurve = Curves.easeOut,
    super.fadeInDuration = const Duration(milliseconds: 300),
    super.fadeInCurve = Curves.easeIn,
    super.width,
    super.height,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.matchTextDirection = false,
    super.useOldImageOnUrlChange = false,
    super.color,
    super.filterQuality = FilterQuality.high,
    super.colorBlendMode,
    super.placeholderFadeInDuration,
    super.memCacheWidth = 1000,
    super.memCacheHeight = 700,
    super.maxWidthDiskCache,
    super.maxHeightDiskCache,
    super.errorListener,
  }) : super(
         cacheKey: getCacheKey(imageUrl),
         cacheManager: CacheManager(
           Config(
             AppConstants.cacheFolder,
             stalePeriod: const Duration(
               days: AppConstants.imagesCacheDuration,
             ),
           ),
         ),
         errorWidget: (context, url, error) {
           return SvgPicture.asset(
             AssetsManager.quran,
             fit: BoxFit.contain,
             height: 100.h,
             width: 100.w,
           );
         },
       );
}

class DazzifyCachedNetworkImageProvider extends CachedNetworkImageProvider {
  DazzifyCachedNetworkImageProvider(
    super.url, {
    super.maxHeight,
    super.maxWidth,
    super.scale = 1.0,
    super.errorListener,
    super.headers,
    super.imageRenderMethodForWeb,
  }) : super(
         cacheKey: getCacheKey(url),
         cacheManager: CacheManager(
           Config(
             AppConstants.cacheFolder,
             stalePeriod: const Duration(
               days: AppConstants.imagesCacheDuration,
             ),
           ),
         ),
       );
}

String getCacheKey(String url) {
  Uri uri = Uri.parse(url);
  String path = uri.path;
  return 'https://${uri.host}$path';
}
