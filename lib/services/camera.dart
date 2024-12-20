import 'package:image_picker/image_picker.dart';

class Files {
  final ImagePicker _picker = ImagePicker();
  String? imagePath;

  Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 800,
      maxHeight: 800,
      imageQuality: 80,
    );
    if(image!=null){
              imagePath = image.path;
               print("Image saved at: $imagePath");

    }
  }
}
