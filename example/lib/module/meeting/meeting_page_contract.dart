import 'package:rongcloud_rtc_wrapper_plugin/rongcloud_rtc_wrapper_plugin.dart';
import 'package:rongcloud_rtc_wrapper_plugin_example/frame/template/mvp/model.dart';
import 'package:rongcloud_rtc_wrapper_plugin_example/frame/template/mvp/presenter.dart';
import 'package:rongcloud_rtc_wrapper_plugin_example/frame/template/mvp/view.dart';

abstract class RCView implements IView {
  void onUserListChanged();

  void onUserAudioStateChanged(String id, bool published);

  void onUserVideoStateChanged(String id, bool published);

  void onExit();

  void onExitWithError(int code);
}

abstract class Model implements IModel {
  Future<bool> changeMic(bool open);

  Future<bool> changeCamera(bool open);

  Future<int> changeAudio(bool publish);

  Future<int> changeVideo(bool publish);

  Future<bool> changeFrontCamera(bool front);

  Future<bool> changeSpeaker(bool speaker);

  Future<bool> changeCameraCaptureOrientation(RCRTCCameraCaptureOrientation orientation);

  Future<bool> changeVideoConfig(RCRTCVideoConfig config);

  Future<bool> changeTinyVideoConfig(RCRTCVideoConfig config);

  Future<bool> changeRemoteAudioStatus(String id, bool subscribe);

  Future<bool> changeRemoteVideoStatus(String id, bool subscribe, bool tiny);

  Future<int> exit();
}

abstract class Presenter implements IPresenter {
  Future<bool> changeMic(bool open);

  Future<bool> changeCamera(bool open);

  Future<int> changeAudio(bool publish);

  Future<int> changeVideo(bool publish);

  Future<bool> changeFrontCamera(bool front);

  Future<bool> changeSpeaker(bool speaker);

  Future<bool> changeCameraCaptureOrientation(RCRTCCameraCaptureOrientation orientation);

  Future<bool> changeVideoConfig(RCRTCVideoConfig config);

  Future<bool> changeTinyVideoConfig(RCRTCVideoConfig config);

  Future<bool> changeRemoteAudioStatus(String id, bool subscribe);

  Future<bool> changeRemoteVideoStatus(String id, bool subscribe, bool tiny);

  void exit();
}
