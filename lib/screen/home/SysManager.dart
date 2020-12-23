class FileSystemManager{
  String range;
  int dem;
  static final FileSystemManager _instance = FileSystemManager._internal();

  FileSystemManager._internal();

  static FileSystemManager get instance => _instance;

}