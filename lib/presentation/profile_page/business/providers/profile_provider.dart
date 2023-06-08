import 'package:flutter/material.dart';
import 'package:video_call/core/string/image_string_constant.dart';

class ProfileProvider extends ChangeNotifier
{
  TextEditingController nameText = TextEditingController();
  TextEditingController bioText = TextEditingController();

  void imagePicker({required BuildContext context}) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                onTap: () async {
                  // final ImagePicker picker = ImagePicker();

                  // final XFile? image = await picker.pickImage(
                  //     source: ImageSource.gallery, imageQuality: 80);
                  // if (image != null) {
                  //   // print("Image pathhhhh ${image.path}");
                  //
                  //   setState(() {
                  //     profileViewController.image = image.path;
                  //   });
                  //   Get.back();
                  //   Get.snackbar("Successfully upload", "Please Check After 2 min.",backgroundColor: Colors.green.shade700);
                  //
                  // }
                  // FirebaseHelper.firebaseHelper.updateProfilePicture(
                  //     File(profileViewController.image!));

                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    height: 130,
                    width: 130,
                    child: Image.asset(
                      ImageStringConstant.imagePickerGalleryImage,
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              ),
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                onTap: () async {

                  // final ImagePicker picker = ImagePicker();

                  // final XFile? image = await picker.pickImage(
                  //     source: ImageSource.camera, imageQuality: 80);
                  // if (image != null) {
                  //   // print("Image pathhhhh ${image.path}");
                  //
                  //   setState(() {
                  //     profileViewController.image = image.path;
                  //   });
                  //   Get.back();
                  //   Get.snackbar("Successfully upload", "Please Check After 2 min.",backgroundColor: Colors.green.shade700);
                  //
                  // }
                  // FirebaseHelper.firebaseHelper.updateProfilePicture(
                  //     File(profileViewController.image!));

                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    height: 130,
                    width: 130,
                    child: Image.asset(
                      ImageStringConstant.imagePickerCameraImage,
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}