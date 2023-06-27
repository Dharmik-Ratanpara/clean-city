import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/home_container_page/models/home_container_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeContainerController extends GetxController {
  HomeContainerController(this.homeContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeContainerModel> homeContainerModelObj;

  var isLoading = true.obs;

  List posts = [];

  Future<void> getPosts() async {
    isLoading.value = true;
    posts.clear();

    DatabaseReference ref = FirebaseDatabase.instance.ref('posts');

    DataSnapshot snapshot = await ref.get();

    for (DataSnapshot user in snapshot.children) {
      for (DataSnapshot child in user.children) {
        Map<String, String> post = {
          "address": child.child('address').value.toString(),
          "area": child.child('area').value.toString(),
          "pincode": child.child('pincode').value.toString(),
          "imageUrl": child.child('imageUrl').value.toString(),
          "upvote": child.child('upvote').value.toString(),
          "downvote": child.child('downvote').value.toString(),
          "datetime": child.child('datetime').value.toString(),
        };

        posts.add(post);
      }
    }

    isLoading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    getPosts();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
