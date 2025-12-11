// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? userID,
    String? userName,
    int? userTypeID,
    String? pinNumber,
  })  : _userID = userID,
        _userName = userName,
        _userTypeID = userTypeID,
        _pinNumber = pinNumber;

  // "UserID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  set userID(int? val) => _userID = val;

  void incrementUserID(int amount) => userID = userID + amount;

  bool hasUserID() => _userID != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "UserTypeID" field.
  int? _userTypeID;
  int get userTypeID => _userTypeID ?? 0;
  set userTypeID(int? val) => _userTypeID = val;

  void incrementUserTypeID(int amount) => userTypeID = userTypeID + amount;

  bool hasUserTypeID() => _userTypeID != null;

  // "PinNumber" field.
  String? _pinNumber;
  String get pinNumber => _pinNumber ?? '';
  set pinNumber(String? val) => _pinNumber = val;

  bool hasPinNumber() => _pinNumber != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        userID: castToType<int>(data['UserID']),
        userName: data['UserName'] as String?,
        userTypeID: castToType<int>(data['UserTypeID']),
        pinNumber: data['PinNumber'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'UserID': _userID,
        'UserName': _userName,
        'UserTypeID': _userTypeID,
        'PinNumber': _pinNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'UserID': serializeParam(
          _userID,
          ParamType.int,
        ),
        'UserName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'UserTypeID': serializeParam(
          _userTypeID,
          ParamType.int,
        ),
        'PinNumber': serializeParam(
          _pinNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        userID: deserializeParam(
          data['UserID'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['UserName'],
          ParamType.String,
          false,
        ),
        userTypeID: deserializeParam(
          data['UserTypeID'],
          ParamType.int,
          false,
        ),
        pinNumber: deserializeParam(
          data['PinNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        userID == other.userID &&
        userName == other.userName &&
        userTypeID == other.userTypeID &&
        pinNumber == other.pinNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userID, userName, userTypeID, pinNumber]);
}

UsersStruct createUsersStruct({
  int? userID,
  String? userName,
  int? userTypeID,
  String? pinNumber,
}) =>
    UsersStruct(
      userID: userID,
      userName: userName,
      userTypeID: userTypeID,
      pinNumber: pinNumber,
    );
