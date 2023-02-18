package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    ShimPluginRegistry shimPluginRegistry = new ShimPluginRegistry(flutterEngine);
    try {
      br.com.thyagoluciano.flutterradio.FlutterRadioPlugin.registerWith(shimPluginRegistry.registrarFor("br.com.thyagoluciano.flutterradio.FlutterRadioPlugin"));
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin flutter_radio, br.com.thyagoluciano.flutterradio.FlutterRadioPlugin", e);
    }
  }
}
