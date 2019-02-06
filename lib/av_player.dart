import 'dart:async';

import 'package:flutter/services.dart';

class AvPlayer {
  static const MethodChannel _channel =
      const MethodChannel('av_player');

  static Future<Null> displayVideo(String path) async {
    Map<String, dynamic> hash = Map<String, dynamic>();
    hash['url'] = path;
    return await _channel.invokeMethod('displayVideo', hash);
  }
}
