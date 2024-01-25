class JobInformationModel {
  final String? name;
  final String? imageUrl;
  final String? dayLeft;
  final String? service;
  final String? money;
  final String? time;
  final String? address;
  final String? transportation;
  final String? providenName;
  bool isLiked = true;

  JobInformationModel({
    this.name,
    this.imageUrl,
    this.dayLeft,
    this.service,
    this.money,
    this.time,
    this.address,
    this.transportation,
    this.providenName,
    this.isLiked = true,
  });
}
