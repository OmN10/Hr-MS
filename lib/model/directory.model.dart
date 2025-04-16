class CallModel {
  String imageName;
  String name;
  String? message;

  Function? onPress;

  CallModel(
      {required this.imageName,
      this.message,
      required this.name,
      this.onPress});
}
