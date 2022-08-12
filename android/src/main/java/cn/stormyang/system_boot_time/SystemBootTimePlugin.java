package cn.stormyang.system_boot_time;

import android.os.SystemClock;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import cn.stormyang.system_boot_time.SystemBootTimeSpace.SystemBootTime;

/** SystemBootTimePlugin */
public class SystemBootTimePlugin implements FlutterPlugin, SystemBootTimeSpace.SystemBootTime {

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
    SystemBootTime.setup(binding.getBinaryMessenger(), this);
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    SystemBootTime.setup(binding.getBinaryMessenger(), null);
  }

  @Override
  public Long second() {
    return SystemClock.elapsedRealtime() / 1000;
  }
}
