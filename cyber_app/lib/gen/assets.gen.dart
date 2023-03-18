/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/CIMHS.png
  AssetGenImage get cimhs => const AssetGenImage('assets/images/CIMHS.png');

  /// File path: assets/images/CyberBulling.jpeg
  AssetGenImage get cyberBulling =>
      const AssetGenImage('assets/images/CyberBulling.jpeg');

  /// File path: assets/images/IdentitytheftlawUK.png
  AssetGenImage get identitytheftlawUK =>
      const AssetGenImage('assets/images/IdentitytheftlawUK.png');

  /// File path: assets/images/bg.jpg
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.jpg');

  /// File path: assets/images/common-phone-scams.png
  AssetGenImage get commonPhoneScams =>
      const AssetGenImage('assets/images/common-phone-scams.png');

  /// File path: assets/images/complaint.jpeg
  AssetGenImage get complaint =>
      const AssetGenImage('assets/images/complaint.jpeg');

  /// File path: assets/images/cybersecurity.png
  AssetGenImage get cybersecurity =>
      const AssetGenImage('assets/images/cybersecurity.png');

  /// File path: assets/images/emialScam.jpg
  AssetGenImage get emialScam =>
      const AssetGenImage('assets/images/emialScam.jpg');

  /// File path: assets/images/fbi.png
  AssetGenImage get fbi => const AssetGenImage('assets/images/fbi.png');

  /// File path: assets/images/help.png
  AssetGenImage get help => const AssetGenImage('assets/images/help.png');

  /// File path: assets/images/main_logo.png
  AssetGenImage get mainLogo =>
      const AssetGenImage('assets/images/main_logo.png');

  /// File path: assets/images/newyotk.png
  AssetGenImage get newyotk => const AssetGenImage('assets/images/newyotk.png');

  /// File path: assets/images/ransomware.jpeg
  AssetGenImage get ransomware =>
      const AssetGenImage('assets/images/ransomware.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [
        cimhs,
        cyberBulling,
        identitytheftlawUK,
        bg,
        commonPhoneScams,
        complaint,
        cybersecurity,
        emialScam,
        fbi,
        help,
        mainLogo,
        newyotk,
        ransomware
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
