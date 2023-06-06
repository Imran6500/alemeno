import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeVM extends GetxController {
  XFile? photo;
  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    try {
      photo = await picker.pickImage(source: ImageSource.camera);
    } catch (err) {
      print("error on clicking image : $err");
    }
    update();
  }
}
