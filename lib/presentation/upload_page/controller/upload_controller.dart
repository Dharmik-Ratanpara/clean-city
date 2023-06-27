import 'dart:io';

import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/upload_page/models/upload_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class UploadController extends GetxController {
  UploadController(this.uploadModelObj);

  TextEditingController addressController = TextEditingController();

  TextEditingController enterareaController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  Rx<UploadModel> uploadModelObj;

  var selectedFile = File("").obs;

  var isLoading = false.obs;

  var userSelectedFile = false.obs;

  final postFormKey = GlobalKey<FormState>();

  void selectPdfFile() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['jpg']);
    if (result != null) {
      final path = result.files.single.path;
      selectedFile.value = File(path!);
      userSelectedFile.value = true;
    } else {
      userSelectedFile.value = false;
    }
  }

  void cleanUpControllers() {
    addressController.clear();
    enterareaController.clear();
    pincodeController.clear();
    selectedFile.value = File("");
    userSelectedFile.value = false;
  }

  void uploadPost() async {
    isLoading.value = true;
    final result = postFormKey.currentState?.validate();
    if (result != null) {
      if (result && userSelectedFile.value) {
        try {
          final auth = FirebaseAuth.instance;
          final currentUser = auth.currentUser;
          final uid = currentUser?.uid;
          final storageRef = FirebaseStorage.instance.ref("postImages/$uid");
          var path = selectedFile.value.path;
          // var lastSeparator = path.lastIndexOf(Platform.pathSeparator);
          // var newPath = "${path.substring(0, lastSeparator + 1)}$uid.jpg";
          // // selectedFile.value.absolute.existsSync() = true;
          // selectedFile.value.renameSync(newPath);
          await storageRef.putFile(selectedFile.value).then((result) async {
            final imageUrl = await storageRef.getDownloadURL();
            final dbRef = FirebaseDatabase.instance.ref("posts/$uid");
            await dbRef.push().set({
              "address": addressController.text,
              "area": enterareaController.text,
              "pincode": pincodeController.text,
              "imageUrl": imageUrl,
              "upvote": 0,
              "downvote": 0,
              "datetime": DateTime.now().millisecondsSinceEpoch,
            }).catchError((error) {
              cleanUpControllers();
              isLoading.value = false;
              // isError.value = true;
              // errorMessage.value = error;
              return;
            });
          }).catchError((error) {
            cleanUpControllers();

            isLoading.value = false;
            // isError.value = true;
            return;
          });
        } on FirebaseException catch (e) {
          cleanUpControllers();

          isLoading.value = false;
          // isError.value = true;
          // errorMessage.value = e.message.toString();
          return;
        }
      } else {
        cleanUpControllers();

        isLoading.value = false;
        return;
      }
    } else {
      cleanUpControllers();

      isLoading.value = false;
      return;
    }
    isLoading.value = false;
    cleanUpControllers();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    enterareaController.dispose();
    pincodeController.dispose();
  }
}
