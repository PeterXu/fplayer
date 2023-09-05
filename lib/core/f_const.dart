part of fplayer;

class FConst {
  /// Make constructor private
  const FConst._();

  static const String FF_CHANNEL = "befovy.com/fijk";
  static const String FF_PLAYER_CHANNEL = "befovy.com/fijkplayer";

  static String getMethodChannel() {
    return FF_CHANNEL;
  }

  static String getEventChannel() {
    return "$FF_CHANNEL/event";
  }

  static String getPlayerMethodChannel(id) {
    return "$FF_PLAYER_CHANNEL/$id";
  }

  static String getPlayerEventChannel(id) {
    return "$FF_PLAYER_CHANNEL/event/$id";
  }
}
