import 'package:get/get.dart';

import 'home_model.dart';

class UserHomeLogic extends GetxController {

  HomeModel getUserProfileModel = HomeModel();
  String? data;
  Map<String, dynamic>?  jsonResult;
   RxString characterName=' '.obs;
  RxString characterLink=' '.obs;

  String characterImage="";
  RxString characterDescription=' '.obs;

}