import 'package:meta/meta.dart';

@immutable
class Settings {
  final String tinyUpFolder;
  final String loveFolder;
  final String likeFolder;
  final String deleteFolder;
  final bool loveImagesMoveToFolder;
  final bool likeImagesMoveToFolder;
  final bool hardDelete;

  Settings({
    this.tinyUpFolder,
    this.loveFolder,
    this.likeFolder,
    this.deleteFolder,
    this.loveImagesMoveToFolder = false,
    this.likeImagesMoveToFolder = false,
    this.hardDelete = false,
  }) {}
}