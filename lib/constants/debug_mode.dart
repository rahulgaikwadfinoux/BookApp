enum BookAppModeEnum { debug, devlopment, uat, release }

class BookAppMode {
  final BookAppModeEnum mode;
  BookAppMode({required this.mode});
}
