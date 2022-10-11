/// @author Pan ming da
/// @time 2021/6/8 15:56
/// @version 1.0
import 'rongcloud_rtc_constants.dart';

class RCRTCEngineSetup {
  RCRTCEngineSetup.create({
    this.reconnectable = true,
    this.statsReportInterval = 1000,
    this.enableSRTP = false,
    this.mediaUrl,
    this.audioSetup,
    this.videoSetup,
  });

  Map<String, dynamic> toJson() => {
        'reconnectable': reconnectable,
        'statsReportInterval': statsReportInterval,
        'enableSRTP': enableSRTP,
        'mediaUrl': mediaUrl,
        'audioSetup': audioSetup?.toJson(),
        'videoSetup': videoSetup?.toJson(),
      };

  final bool reconnectable;
  final int statsReportInterval;
  final bool enableSRTP;
  final String? mediaUrl;

  final RCRTCAudioSetup? audioSetup;
  final RCRTCVideoSetup? videoSetup;
}

class RCRTCAudioSetup {
  RCRTCAudioSetup.create({
    this.codec = RCRTCAudioCodecType.opus,
    this.audioSource = RCRTCAudioSource.voice_communication,
    this.audioSampleRate = 16000,
    this.enableMicrophone = true,
    this.enableStereo = true,
    this.mixOtherAppsAudio = true,
  });

  Map<String, dynamic> toJson() => {
        'codec': codec.index,
        'audioSource': audioSource.index,
        'audioSampleRate': audioSampleRate,
        'enableMicrophone': enableMicrophone,
        'enableStereo': enableStereo,
        'mixOtherAppsAudio': mixOtherAppsAudio,
      };

  final RCRTCAudioCodecType codec;

  /// 仅在 iOS 平台生效
  final bool mixOtherAppsAudio;

  /// 以下参数仅在 android 平台生效
  final RCRTCAudioSource audioSource;
  final int audioSampleRate;
  final bool enableMicrophone;
  final bool enableStereo;
}

class RCRTCVideoSetup {
  RCRTCVideoSetup.create({
    this.enableTinyStream = true,
    this.enableHardwareDecoder = true,
    this.enableHardwareEncoder = true,
    this.enableHardwareEncoderHighProfile = false,
    this.hardwareEncoderFrameRate = 30,
    this.enableTexture = true,
  });

  Map<String, dynamic> toJson() => {
        'enableHardwareDecoder': enableHardwareDecoder,
        'enableHardwareEncoder': enableHardwareEncoder,
        'enableHardwareEncoderHighProfile': enableHardwareEncoderHighProfile,
        'hardwareEncoderFrameRate': hardwareEncoderFrameRate,
        'enableEncoderTexture': enableTexture,
        'enableTinyStream': enableTinyStream,
      };

  final bool enableTinyStream;

  /// 以下参数仅在android平台生效
  final bool enableHardwareDecoder;
  final bool enableHardwareEncoder;
  final bool enableHardwareEncoderHighProfile;
  final int hardwareEncoderFrameRate;
  final bool enableTexture;
}

class RCRTCRoomSetup {
  RCRTCRoomSetup.create({
    required this.mediaType,
    required this.role,
    this.joinType = RCRTCJoinType.kick,
  });

  Map<String, dynamic> toJson() => {
        'mediaType': mediaType.index,
        'role': role.index,
        'joinType': joinType.index,
      };

  final RCRTCMediaType mediaType;
  final RCRTCRole role;
  final RCRTCJoinType joinType;
}
