class PlaceSuggestation {
  String placeId;
  String description;

  PlaceSuggestation.fromJson(Map<String, dynamic> json) {
    placeId = json['place_id'];
    description = json['descip'];
  }
}
