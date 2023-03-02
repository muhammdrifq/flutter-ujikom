import 'dart:convert';

import 'package:get/get.dart';
import 'package:ujikom/app/data/agents_response.dart';
import 'package:ujikom/app/utils/api.dart';
import '../../../data/entertainment_response.dart';
import '../../../data/headline_response.dart';
import '../../../data/sports_response.dart';
import '../../../data/technology_response.dart';
import 'package:http/http.dart' as http;

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final _getConnect = GetConnect();
  var client = http.Client();
  final agentsList = [].obs;

  Future<HeadlineResponse> getHeadline() async{
    final response = await _getConnect.get(BaseUrl.headline);
    return HeadlineResponse.fromJson(jsonDecode(response.body));  
  }

  Future<EntertainmentResponse> getEntertainment() async{
    final response = await _getConnect.get(BaseUrl.entertainment);
    return EntertainmentResponse.fromJson(jsonDecode(response.body));  
  }

  Future<SportsResponse> getSports() async{
    final response = await _getConnect.get(BaseUrl.sports);
    return SportsResponse.fromJson(jsonDecode(response.body));  
  }

  Future<TechnologyResponse> getTechnology() async{
    final response = await _getConnect.get(BaseUrl.technology);
    return TechnologyResponse.fromJson(jsonDecode(response.body));  
  }

  void fetchAgents() async {
    try {
      var response = await http.get(Uri.parse(ValoUrl.agents));
      var agents = <AgentsResponse>[];

      if(response.statusCode == 200) {
        var agentsJson = json.decode(response.body);
        for ( var agent in agentsJson){
          agents.add(AgentsResponse.fromJson(agent));
        }
      }
      agentsList.assignAll(agents);
    } finally{}
  }

  final count = 0.obs;
  @override
  void onInit() {
    fetchAgents();
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

