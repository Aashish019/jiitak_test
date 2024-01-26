import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController representativeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController catchController = TextEditingController();
  TextEditingController seatController = TextEditingController();
  TextEditingController storeController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    representativeController.dispose();
    phoneController.dispose();
    catchController.dispose();
    seatController.dispose();
    storeController.dispose();
    super.dispose();
  }

  var isChecked = false.obs;

  final imagePicker = ImagePicker();
  List<XFile> imageFileList = [];
  void selectedImage() async {
    final List<XFile> selectedImage = await imagePicker.pickMultiImage();
    if (selectedImage.isNotEmpty) {
      imageFileList.addAll(selectedImage);
    }
  }
}
