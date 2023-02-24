import 'dart:convert';

import 'package:get/get.dart';
import 'package:ujikom/app/utils/api.dart';
import '../../../data/entertainment_response.dart';
import '../../../data/headline_response.dart';
import '../../../data/sports_response.dart';
import '../../../data/technology_response.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final _getConnect = GetConnect();

  Future<HeadlineResponse> getHeadline() async{
    final response = await _getConnect.get(BaseUrl.headline);
    return HeadlineResponse.fromJson(jsonDecode(response.body));  
  }

  Future<EntertainmentResponse> getEntertainment() async{
    final response = await _getConnect.get(BaseUrl.headline);
    return EntertainmentResponse.fromJson(jsonDecode(response.body));  
  }

  Future<SportsResponse> getSports() async{
    final response = await _getConnect.get(BaseUrl.headline);
    return SportsResponse.fromJson(jsonDecode(response.body));  
  }

  Future<TechnologyResponse> getTechnology() async{
    final response = await _getConnect.get(BaseUrl.headline);
    return TechnologyResponse.fromJson(jsonDecode(response.body));  
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
