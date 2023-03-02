class AgentsResponse {
  int? id;
  String? photo;
  String? name;
  String? passive;
  String? basic;
  String? signature;
  String? ultimate;
  String? description;

  AgentsResponse(
      {this.id,
      this.photo,
      this.name,
      this.passive,
      this.basic,
      this.signature,
      this.ultimate,
      this.description});

  AgentsResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    name = json['name'];
    passive = json['passive'];
    basic = json['basic'];
    signature = json['signature'];
    ultimate = json['ultimate'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['photo'] = this.photo;
    data['name'] = this.name;
    data['passive'] = this.passive;
    data['basic'] = this.basic;
    data['signature'] = this.signature;
    data['ultimate'] = this.ultimate;
    data['description'] = this.description;
    return data;
  }
}
