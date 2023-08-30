import 'package:flutter_test/flutter_test.dart';
import 'package:fplayer/fplayer.dart';
import 'package:fplayer/fplayer_platform_interface.dart';
import 'package:fplayer/fplayer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFplayerPlatform
    with MockPlatformInterfaceMixin
    implements FplayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FplayerPlatform initialPlatform = FplayerPlatform.instance;

  test('$MethodChannelFplayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFplayer>());
  });

  test('getPlatformVersion', () async {
    FPlayer fplayerPlugin = FPlayer();
    MockFplayerPlatform fakePlatform = MockFplayerPlatform();
    FplayerPlatform.instance = fakePlatform;

    expect(await fplayerPlugin.getPlatformVersion(), '42');
  });
}
