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

  Settings.update(Settings base, {
    String tinyUpFolder,
    String loveFolder,
    String likeFolder,
    String deleteFolder,
    bool loveImagesMoveToFolder,
    bool likeImagesMoveToFolder,
    bool hardDelete,
  }) : this(
      tinyUpFolder: tinyUpFolder ?? base.tinyUpFolder,
      loveFolder: loveFolder ?? base.loveFolder,
      likeFolder: likeFolder ?? base.likeFolder,
      deleteFolder: deleteFolder ?? base.deleteFolder,
      loveImagesMoveToFolder: loveImagesMoveToFolder ?? base.loveImagesMoveToFolder,
      likeImagesMoveToFolder: likeImagesMoveToFolder ?? base.likeImagesMoveToFolder,
      hardDelete: hardDelete ?? base.hardDelete,
  );
}