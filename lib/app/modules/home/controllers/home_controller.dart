import 'dart:async';

import 'package:get/get.dart';
import 'package:ujikom/app/modules/dashboard/views/dashboard_view.dart';
import 'package:ujikom/app/modules/login/views/login_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ujikom/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  late Timer _pindah;
  final authToken = GetStorage();
  
  @override
  void onInit() {
    _pindah = Timer.periodic(
      const Duration(seconds: 4,),
      (timer) => Get.offNamed( Routes.DASHBOARD) 
      );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _pindah.cancel();
    super.onClose();
  }

  }
