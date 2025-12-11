// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersInProductionStruct extends BaseStruct {
  OrdersInProductionStruct({
    int? orderNumber,
    String? orderStatus,
    int? orderStatusID,
    String? productionDate,
    String? orderSONumber,
    String? customerName,
    String? jobName,
    String? orderSlitterStatus,
    String? orderTrimStatus,
    String? orderRollStatus,
    String? orderWrapStatus,
    String? orderSoffitStatus,
    String? orderPartStatus,
    String? orderPO,
    String? orderTimeStamp,
    double? orderDeliveryWt,
    bool? unlockAuthorize,
    String? unlockAuthorizeTS,
    String? orderDate,
    String? orderUnlockedBy,
    bool? orderUnlocked,
    String? lockReason,
  })  : _orderNumber = orderNumber,
        _orderStatus = orderStatus,
        _orderStatusID = orderStatusID,
        _productionDate = productionDate,
        _orderSONumber = orderSONumber,
        _customerName = customerName,
        _jobName = jobName,
        _orderSlitterStatus = orderSlitterStatus,
        _orderTrimStatus = orderTrimStatus,
        _orderRollStatus = orderRollStatus,
        _orderWrapStatus = orderWrapStatus,
        _orderSoffitStatus = orderSoffitStatus,
        _orderPartStatus = orderPartStatus,
        _orderPO = orderPO,
        _orderTimeStamp = orderTimeStamp,
        _orderDeliveryWt = orderDeliveryWt,
        _unlockAuthorize = unlockAuthorize,
        _unlockAuthorizeTS = unlockAuthorizeTS,
        _orderDate = orderDate,
        _orderUnlockedBy = orderUnlockedBy,
        _orderUnlocked = orderUnlocked,
        _lockReason = lockReason;

  // "OrderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  set orderNumber(int? val) => _orderNumber = val;

  void incrementOrderNumber(int amount) => orderNumber = orderNumber + amount;

  bool hasOrderNumber() => _orderNumber != null;

  // "OrderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  set orderStatus(String? val) => _orderStatus = val;

  bool hasOrderStatus() => _orderStatus != null;

  // "OrderStatusID" field.
  int? _orderStatusID;
  int get orderStatusID => _orderStatusID ?? 0;
  set orderStatusID(int? val) => _orderStatusID = val;

  void incrementOrderStatusID(int amount) =>
      orderStatusID = orderStatusID + amount;

  bool hasOrderStatusID() => _orderStatusID != null;

  // "ProductionDate" field.
  String? _productionDate;
  String get productionDate => _productionDate ?? '';
  set productionDate(String? val) => _productionDate = val;

  bool hasProductionDate() => _productionDate != null;

  // "OrderSONumber" field.
  String? _orderSONumber;
  String get orderSONumber => _orderSONumber ?? '';
  set orderSONumber(String? val) => _orderSONumber = val;

  bool hasOrderSONumber() => _orderSONumber != null;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  set customerName(String? val) => _customerName = val;

  bool hasCustomerName() => _customerName != null;

  // "JobName" field.
  String? _jobName;
  String get jobName => _jobName ?? '';
  set jobName(String? val) => _jobName = val;

  bool hasJobName() => _jobName != null;

  // "OrderSlitterStatus" field.
  String? _orderSlitterStatus;
  String get orderSlitterStatus => _orderSlitterStatus ?? '';
  set orderSlitterStatus(String? val) => _orderSlitterStatus = val;

  bool hasOrderSlitterStatus() => _orderSlitterStatus != null;

  // "OrderTrimStatus" field.
  String? _orderTrimStatus;
  String get orderTrimStatus => _orderTrimStatus ?? '';
  set orderTrimStatus(String? val) => _orderTrimStatus = val;

  bool hasOrderTrimStatus() => _orderTrimStatus != null;

  // "OrderRollStatus" field.
  String? _orderRollStatus;
  String get orderRollStatus => _orderRollStatus ?? '';
  set orderRollStatus(String? val) => _orderRollStatus = val;

  bool hasOrderRollStatus() => _orderRollStatus != null;

  // "OrderWrapStatus" field.
  String? _orderWrapStatus;
  String get orderWrapStatus => _orderWrapStatus ?? '';
  set orderWrapStatus(String? val) => _orderWrapStatus = val;

  bool hasOrderWrapStatus() => _orderWrapStatus != null;

  // "OrderSoffitStatus" field.
  String? _orderSoffitStatus;
  String get orderSoffitStatus => _orderSoffitStatus ?? '';
  set orderSoffitStatus(String? val) => _orderSoffitStatus = val;

  bool hasOrderSoffitStatus() => _orderSoffitStatus != null;

  // "OrderPartStatus" field.
  String? _orderPartStatus;
  String get orderPartStatus => _orderPartStatus ?? '';
  set orderPartStatus(String? val) => _orderPartStatus = val;

  bool hasOrderPartStatus() => _orderPartStatus != null;

  // "OrderPO" field.
  String? _orderPO;
  String get orderPO => _orderPO ?? '';
  set orderPO(String? val) => _orderPO = val;

  bool hasOrderPO() => _orderPO != null;

  // "OrderTimeStamp" field.
  String? _orderTimeStamp;
  String get orderTimeStamp => _orderTimeStamp ?? '';
  set orderTimeStamp(String? val) => _orderTimeStamp = val;

  bool hasOrderTimeStamp() => _orderTimeStamp != null;

  // "OrderDeliveryWt" field.
  double? _orderDeliveryWt;
  double get orderDeliveryWt => _orderDeliveryWt ?? 0.0;
  set orderDeliveryWt(double? val) => _orderDeliveryWt = val;

  void incrementOrderDeliveryWt(double amount) =>
      orderDeliveryWt = orderDeliveryWt + amount;

  bool hasOrderDeliveryWt() => _orderDeliveryWt != null;

  // "UnlockAuthorize" field.
  bool? _unlockAuthorize;
  bool get unlockAuthorize => _unlockAuthorize ?? false;
  set unlockAuthorize(bool? val) => _unlockAuthorize = val;

  bool hasUnlockAuthorize() => _unlockAuthorize != null;

  // "UnlockAuthorizeTS" field.
  String? _unlockAuthorizeTS;
  String get unlockAuthorizeTS => _unlockAuthorizeTS ?? '';
  set unlockAuthorizeTS(String? val) => _unlockAuthorizeTS = val;

  bool hasUnlockAuthorizeTS() => _unlockAuthorizeTS != null;

  // "OrderDate" field.
  String? _orderDate;
  String get orderDate => _orderDate ?? '';
  set orderDate(String? val) => _orderDate = val;

  bool hasOrderDate() => _orderDate != null;

  // "OrderUnlockedBy" field.
  String? _orderUnlockedBy;
  String get orderUnlockedBy => _orderUnlockedBy ?? '';
  set orderUnlockedBy(String? val) => _orderUnlockedBy = val;

  bool hasOrderUnlockedBy() => _orderUnlockedBy != null;

  // "OrderUnlocked" field.
  bool? _orderUnlocked;
  bool get orderUnlocked => _orderUnlocked ?? false;
  set orderUnlocked(bool? val) => _orderUnlocked = val;

  bool hasOrderUnlocked() => _orderUnlocked != null;

  // "LockReason" field.
  String? _lockReason;
  String get lockReason => _lockReason ?? '';
  set lockReason(String? val) => _lockReason = val;

  bool hasLockReason() => _lockReason != null;

  static OrdersInProductionStruct fromMap(Map<String, dynamic> data) =>
      OrdersInProductionStruct(
        orderNumber: castToType<int>(data['OrderNumber']),
        orderStatus: data['OrderStatus'] as String?,
        orderStatusID: castToType<int>(data['OrderStatusID']),
        productionDate: data['ProductionDate'] as String?,
        orderSONumber: data['OrderSONumber'] as String?,
        customerName: data['CustomerName'] as String?,
        jobName: data['JobName'] as String?,
        orderSlitterStatus: data['OrderSlitterStatus'] as String?,
        orderTrimStatus: data['OrderTrimStatus'] as String?,
        orderRollStatus: data['OrderRollStatus'] as String?,
        orderWrapStatus: data['OrderWrapStatus'] as String?,
        orderSoffitStatus: data['OrderSoffitStatus'] as String?,
        orderPartStatus: data['OrderPartStatus'] as String?,
        orderPO: data['OrderPO'] as String?,
        orderTimeStamp: data['OrderTimeStamp'] as String?,
        orderDeliveryWt: castToType<double>(data['OrderDeliveryWt']),
        unlockAuthorize: data['UnlockAuthorize'] as bool?,
        unlockAuthorizeTS: data['UnlockAuthorizeTS'] as String?,
        orderDate: data['OrderDate'] as String?,
        orderUnlockedBy: data['OrderUnlockedBy'] as String?,
        orderUnlocked: data['OrderUnlocked'] as bool?,
        lockReason: data['LockReason'] as String?,
      );

  static OrdersInProductionStruct? maybeFromMap(dynamic data) => data is Map
      ? OrdersInProductionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OrderNumber': _orderNumber,
        'OrderStatus': _orderStatus,
        'OrderStatusID': _orderStatusID,
        'ProductionDate': _productionDate,
        'OrderSONumber': _orderSONumber,
        'CustomerName': _customerName,
        'JobName': _jobName,
        'OrderSlitterStatus': _orderSlitterStatus,
        'OrderTrimStatus': _orderTrimStatus,
        'OrderRollStatus': _orderRollStatus,
        'OrderWrapStatus': _orderWrapStatus,
        'OrderSoffitStatus': _orderSoffitStatus,
        'OrderPartStatus': _orderPartStatus,
        'OrderPO': _orderPO,
        'OrderTimeStamp': _orderTimeStamp,
        'OrderDeliveryWt': _orderDeliveryWt,
        'UnlockAuthorize': _unlockAuthorize,
        'UnlockAuthorizeTS': _unlockAuthorizeTS,
        'OrderDate': _orderDate,
        'OrderUnlockedBy': _orderUnlockedBy,
        'OrderUnlocked': _orderUnlocked,
        'LockReason': _lockReason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OrderNumber': serializeParam(
          _orderNumber,
          ParamType.int,
        ),
        'OrderStatus': serializeParam(
          _orderStatus,
          ParamType.String,
        ),
        'OrderStatusID': serializeParam(
          _orderStatusID,
          ParamType.int,
        ),
        'ProductionDate': serializeParam(
          _productionDate,
          ParamType.String,
        ),
        'OrderSONumber': serializeParam(
          _orderSONumber,
          ParamType.String,
        ),
        'CustomerName': serializeParam(
          _customerName,
          ParamType.String,
        ),
        'JobName': serializeParam(
          _jobName,
          ParamType.String,
        ),
        'OrderSlitterStatus': serializeParam(
          _orderSlitterStatus,
          ParamType.String,
        ),
        'OrderTrimStatus': serializeParam(
          _orderTrimStatus,
          ParamType.String,
        ),
        'OrderRollStatus': serializeParam(
          _orderRollStatus,
          ParamType.String,
        ),
        'OrderWrapStatus': serializeParam(
          _orderWrapStatus,
          ParamType.String,
        ),
        'OrderSoffitStatus': serializeParam(
          _orderSoffitStatus,
          ParamType.String,
        ),
        'OrderPartStatus': serializeParam(
          _orderPartStatus,
          ParamType.String,
        ),
        'OrderPO': serializeParam(
          _orderPO,
          ParamType.String,
        ),
        'OrderTimeStamp': serializeParam(
          _orderTimeStamp,
          ParamType.String,
        ),
        'OrderDeliveryWt': serializeParam(
          _orderDeliveryWt,
          ParamType.double,
        ),
        'UnlockAuthorize': serializeParam(
          _unlockAuthorize,
          ParamType.bool,
        ),
        'UnlockAuthorizeTS': serializeParam(
          _unlockAuthorizeTS,
          ParamType.String,
        ),
        'OrderDate': serializeParam(
          _orderDate,
          ParamType.String,
        ),
        'OrderUnlockedBy': serializeParam(
          _orderUnlockedBy,
          ParamType.String,
        ),
        'OrderUnlocked': serializeParam(
          _orderUnlocked,
          ParamType.bool,
        ),
        'LockReason': serializeParam(
          _lockReason,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrdersInProductionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrdersInProductionStruct(
        orderNumber: deserializeParam(
          data['OrderNumber'],
          ParamType.int,
          false,
        ),
        orderStatus: deserializeParam(
          data['OrderStatus'],
          ParamType.String,
          false,
        ),
        orderStatusID: deserializeParam(
          data['OrderStatusID'],
          ParamType.int,
          false,
        ),
        productionDate: deserializeParam(
          data['ProductionDate'],
          ParamType.String,
          false,
        ),
        orderSONumber: deserializeParam(
          data['OrderSONumber'],
          ParamType.String,
          false,
        ),
        customerName: deserializeParam(
          data['CustomerName'],
          ParamType.String,
          false,
        ),
        jobName: deserializeParam(
          data['JobName'],
          ParamType.String,
          false,
        ),
        orderSlitterStatus: deserializeParam(
          data['OrderSlitterStatus'],
          ParamType.String,
          false,
        ),
        orderTrimStatus: deserializeParam(
          data['OrderTrimStatus'],
          ParamType.String,
          false,
        ),
        orderRollStatus: deserializeParam(
          data['OrderRollStatus'],
          ParamType.String,
          false,
        ),
        orderWrapStatus: deserializeParam(
          data['OrderWrapStatus'],
          ParamType.String,
          false,
        ),
        orderSoffitStatus: deserializeParam(
          data['OrderSoffitStatus'],
          ParamType.String,
          false,
        ),
        orderPartStatus: deserializeParam(
          data['OrderPartStatus'],
          ParamType.String,
          false,
        ),
        orderPO: deserializeParam(
          data['OrderPO'],
          ParamType.String,
          false,
        ),
        orderTimeStamp: deserializeParam(
          data['OrderTimeStamp'],
          ParamType.String,
          false,
        ),
        orderDeliveryWt: deserializeParam(
          data['OrderDeliveryWt'],
          ParamType.double,
          false,
        ),
        unlockAuthorize: deserializeParam(
          data['UnlockAuthorize'],
          ParamType.bool,
          false,
        ),
        unlockAuthorizeTS: deserializeParam(
          data['UnlockAuthorizeTS'],
          ParamType.String,
          false,
        ),
        orderDate: deserializeParam(
          data['OrderDate'],
          ParamType.String,
          false,
        ),
        orderUnlockedBy: deserializeParam(
          data['OrderUnlockedBy'],
          ParamType.String,
          false,
        ),
        orderUnlocked: deserializeParam(
          data['OrderUnlocked'],
          ParamType.bool,
          false,
        ),
        lockReason: deserializeParam(
          data['LockReason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrdersInProductionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdersInProductionStruct &&
        orderNumber == other.orderNumber &&
        orderStatus == other.orderStatus &&
        orderStatusID == other.orderStatusID &&
        productionDate == other.productionDate &&
        orderSONumber == other.orderSONumber &&
        customerName == other.customerName &&
        jobName == other.jobName &&
        orderSlitterStatus == other.orderSlitterStatus &&
        orderTrimStatus == other.orderTrimStatus &&
        orderRollStatus == other.orderRollStatus &&
        orderWrapStatus == other.orderWrapStatus &&
        orderSoffitStatus == other.orderSoffitStatus &&
        orderPartStatus == other.orderPartStatus &&
        orderPO == other.orderPO &&
        orderTimeStamp == other.orderTimeStamp &&
        orderDeliveryWt == other.orderDeliveryWt &&
        unlockAuthorize == other.unlockAuthorize &&
        unlockAuthorizeTS == other.unlockAuthorizeTS &&
        orderDate == other.orderDate &&
        orderUnlockedBy == other.orderUnlockedBy &&
        orderUnlocked == other.orderUnlocked &&
        lockReason == other.lockReason;
  }

  @override
  int get hashCode => const ListEquality().hash([
        orderNumber,
        orderStatus,
        orderStatusID,
        productionDate,
        orderSONumber,
        customerName,
        jobName,
        orderSlitterStatus,
        orderTrimStatus,
        orderRollStatus,
        orderWrapStatus,
        orderSoffitStatus,
        orderPartStatus,
        orderPO,
        orderTimeStamp,
        orderDeliveryWt,
        unlockAuthorize,
        unlockAuthorizeTS,
        orderDate,
        orderUnlockedBy,
        orderUnlocked,
        lockReason
      ]);
}

OrdersInProductionStruct createOrdersInProductionStruct({
  int? orderNumber,
  String? orderStatus,
  int? orderStatusID,
  String? productionDate,
  String? orderSONumber,
  String? customerName,
  String? jobName,
  String? orderSlitterStatus,
  String? orderTrimStatus,
  String? orderRollStatus,
  String? orderWrapStatus,
  String? orderSoffitStatus,
  String? orderPartStatus,
  String? orderPO,
  String? orderTimeStamp,
  double? orderDeliveryWt,
  bool? unlockAuthorize,
  String? unlockAuthorizeTS,
  String? orderDate,
  String? orderUnlockedBy,
  bool? orderUnlocked,
  String? lockReason,
}) =>
    OrdersInProductionStruct(
      orderNumber: orderNumber,
      orderStatus: orderStatus,
      orderStatusID: orderStatusID,
      productionDate: productionDate,
      orderSONumber: orderSONumber,
      customerName: customerName,
      jobName: jobName,
      orderSlitterStatus: orderSlitterStatus,
      orderTrimStatus: orderTrimStatus,
      orderRollStatus: orderRollStatus,
      orderWrapStatus: orderWrapStatus,
      orderSoffitStatus: orderSoffitStatus,
      orderPartStatus: orderPartStatus,
      orderPO: orderPO,
      orderTimeStamp: orderTimeStamp,
      orderDeliveryWt: orderDeliveryWt,
      unlockAuthorize: unlockAuthorize,
      unlockAuthorizeTS: unlockAuthorizeTS,
      orderDate: orderDate,
      orderUnlockedBy: orderUnlockedBy,
      orderUnlocked: orderUnlocked,
      lockReason: lockReason,
    );
