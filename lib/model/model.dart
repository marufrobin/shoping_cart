class ModelData {
  String productName;
  String productImageName;
  String productRating;
  String distance;
  double proudctPrice;
  double? totalPrice;
  double quantity;

  ModelData(this.productName, this.productImageName, this.proudctPrice,
      this.totalPrice, this.productRating, this.distance, this.quantity);

  static List<ModelData> genaretListData() {
    return [
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
      ModelData("Food", "images/1.jpg", 5, null, "4.5", "300m", 1),
    ];
  }
}
