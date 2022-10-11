//ClsBase 건드리지 않을 코드
//--------------------------------------------------------------------------
class ClsUserBase {
  List<String> dataList = [];
  List<String> optionList = [];

  bool addUserData(String data) {
    dataList.add(data);
    print('[Add UserData] : Index ${dataList.length - 1}');
    return true;
  }

  bool addUserOption(String option) {
    optionList.add(option);
    print('[Add UserOption] : Index ${dataList.length - 1}');
    return true;
  }

  bool setUserData(int index, String data) {
    if (dataList.length <= index) {
      throw FormatException('[ClsUser] : setData : index is over ');
    }
    dataList[index] = data;
    return true;
  }

  bool setUserOption(int index, String option) {
    if (optionList.length <= index) {
      throw FormatException('[ClsUser] : setOption : index is over ');
    }
    optionList[index] = option;
    return true;
  }

  String getUserData(int index) {
    if (dataList.length <= index) {
      throw FormatException('[ClsUser] : getData : index is over ');
    }
    return dataList[index];
  }

  String getUserOption(int index) {
    if (optionList.length <= index) {
      throw FormatException('[ClsUser] : setOption : index is over ');
    }
    return optionList[index];
  }
}

class ClsFileBase {
  List<String> pathList = [];

  bool addPath(String path) {
    pathList.add(path);
    print('[Add Path] : Index ${pathList.length - 1}');
    return true;
  }

  bool setPath(int index, String path) {
    if (pathList.length <= index) {
      throw FormatException('[ClsFile] : setPath : index is over ');
    }
    pathList[index] = path;
    return true;
  }

  String getPath(int index) {
    if (pathList.length <= index) {
      throw FormatException('[ClsFile] : getPath : index is over ');
    }
    return pathList[index];
  }

  //file read
  bool readFile(String path, List<String> context) {
    return true;
  }

  //file write
  bool writeFile(String path, List<String> context) {
    //path 접근 및 open
    for (String data in context) {
      data = 'Hello, $data.';
    }
    return true;
  }
}

class ClsBase extends ClsUserBase with ClsFileBase {}

//--------------------------------------------------------------------------
//ClsWork 앱마다 따로 수정해줘야하는 코드
enum UserData { id, name, premium }

enum Option { originSave, modifySave, loadCamera }

enum File { userData, option }

class ClsWork extends ClsBase {
  ClsWork() {
    // Base File Init
    addPath("userData Path");
    addPath("option Path");

    // Base Data Load From File
    print(File.option.name);
    print(File.option.index);

    // Verify
    // enum name : List<string> data
  }
}