package com.flutterplayer.fplayer;

public class FConst {
    static final String FF_CHANNEL = "befovy.com/fijk";
    static final String FF_PLAYER_CHANNEL = "befovy.com/fijkplayer";

    private FConst() {}

    static String getMethodChannel() {
        return FF_CHANNEL;
    }

    static String getEventChannel() {
        return FF_CHANNEL + "/event";
    }

    static String getPlayerMethodChannel(int id) {
        return FF_PLAYER_CHANNEL + "/" + id;
    }

    static String getPlayerEventChannel(int id) {
        return FF_PLAYER_CHANNEL + "/event/" + id;
    }
}
