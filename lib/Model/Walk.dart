import 'package:DogWalk/Helper/Storage.dart';

class Walk {
  int id;
  DateTime startTime;
  DateTime endTime;
  int bagsUsed;

  Walk({this.startTime, this.endTime, this.bagsUsed});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      StorageManager.WALKS_COLUMN_BAGSUSED: bagsUsed,
      StorageManager.WALKS_COLUMN_STARTTIME: startTime.millisecondsSinceEpoch,
      StorageManager.WALKS_COLUMN_ENDTIME: endTime.millisecondsSinceEpoch,
    };

    if (id != null) {
      map[StorageManager.WALKS_COLUMN_ID] = id;
    }

    return map;
  }

  Walk.fromMap(Map<String, dynamic> map) {
    id = map[StorageManager.WALKS_COLUMN_ID];
    startTime = DateTime.fromMicrosecondsSinceEpoch(
        map[StorageManager.WALKS_COLUMN_STARTTIME]);
    endTime = DateTime.fromMillisecondsSinceEpoch(
        map[StorageManager.WALKS_COLUMN_ENDTIME]);
    bagsUsed = map[StorageManager.WALKS_COLUMN_BAGSUSED];
  }
}
