import 'dart:io';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:be_sharp/constants/form_consts.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class FileCore {
  static Future<Uint8List?> getCompressedImage(ImageSource source) async {
    final xFile = await _pickImage(source);
    final croppedFile = await _cropImage(xFile);
    final jpgFile = await _convertToJpg(croppedFile);
    final compressedImage = await _compressImage(jpgFile);
    return compressedImage;
  }

  static Future<Uint8List?> _compressImage(File? jpgFile) async {
    if (jpgFile == null) {
      return null;
    }
    final result = await FlutterImageCompress.compressWithFile(
      jpgFile.path,
      minWidth: 512,
      minHeight: 512,
      quality: 80,
    );
    return result;
  }

  static Future<File?> _convertToJpg(CroppedFile? croppedFile) async {
    if (croppedFile == null) {
      return null;
    }
    File inputFile = File(croppedFile.path);
    img.Image? image = img.decodeImage(inputFile.readAsBytesSync());

    if (image != null) {
      final Directory tempDir = await getTemporaryDirectory();
      return File("${tempDir.absolute.path}/converted.jpg")
        ..writeAsBytesSync(img.encodeJpg(image));
    } else {
      return null;
    }
  }

  static Future<CroppedFile?> _cropImage(XFile? xFile) async {
    if (xFile == null) {
      return null;
    }
    final instance = ImageCropper();
    final result = await instance.cropImage(
      aspectRatio: const CropAspectRatio(ratioX: 512, ratioY: 512),
      sourcePath: xFile.path,
    );
    return result;
  }

  static Future<XFile?> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    return image;
  }

  static Future<bool> isNotSquareImage(Uint8List imageBytes) async {
    ui.Codec codec1 = await ui.instantiateImageCodec(imageBytes);
    ui.FrameInfo frameInfo1 = await codec1.getNextFrame();
    int width = frameInfo1.image.width;
    int height = frameInfo1.image.height;
    // 正方形でないならtrueを返す
    return width != height;
  }

  static String get squareImageRequestMsg => Platform.isIOS
      ? FormsConsts.iosSquareImageRequestMsg
      : FormsConsts.androidSquareImageRequestMsg;
  
}
