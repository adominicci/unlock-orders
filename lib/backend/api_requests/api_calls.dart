import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Unlock Orders ApiFlow API Group Code

class UnlockOrdersApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/9ee5de36ed61483e8fc12dfd202e56f5';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
  };
  static ListTblOrdersDetailCall listTblOrdersDetailCall =
      ListTblOrdersDetailCall();
  static CreateNewTblOrdersDetailCall createNewTblOrdersDetailCall =
      CreateNewTblOrdersDetailCall();
  static GetTblOrdersDetailByIDCall getTblOrdersDetailByIDCall =
      GetTblOrdersDetailByIDCall();
  static UpdateTblOrdersDetailCall updateTblOrdersDetailCall =
      UpdateTblOrdersDetailCall();
  static ListTblOrdersCall listTblOrdersCall = ListTblOrdersCall();
  static CreateNewTblOrdersCall createNewTblOrdersCall =
      CreateNewTblOrdersCall();
  static GetTblOrdersByIDCall getTblOrdersByIDCall = GetTblOrdersByIDCall();
  static UpdateTblOrdersCall updateTblOrdersCall = UpdateTblOrdersCall();
  static ListDboVwProductionAltCall listDboVwProductionAltCall =
      ListDboVwProductionAltCall();
  static ListDboVwUnlockOrderAPICall listDboVwUnlockOrderAPICall =
      ListDboVwUnlockOrderAPICall();
}

class ListTblOrdersDetailCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? id,
    int? orderID,
    String? itemRefListID = '',
    String? description = '',
    String? qtyPanels = '',
    String? lengthFeet = '',
    String? lengthInches = '',
    String? lengthTotal = '',
    String? quantity = '',
    String? sizeFeet = '',
    String? sizeInches = '',
    String? sizeTotal = '',
    String? gauge = '',
    String? color = '',
    String? girth = '',
    String? rate = '',
    String? amount = '',
    int? lineItem,
    String? rateOriginal = '',
    String? amountOriginal = '',
    String? percentDisc = '',
    int? connexJobID,
    int? connexBatchID,
    String? weight = '',
    String? pONumberID = '',
    String? pOSelect = '',
    bool? slitDone,
    bool? trimDone,
    bool? wrapDone,
    bool? partsDone,
    bool? rollDone,
    bool? soffitDone,
    int? slitStockQty,
    bool? slitStockDone,
    String? slitStockPrint = '',
    int? trimStockQty,
    bool? trimStockDone,
    String? slitNote = '',
    String? slitStockNote = '',
    String? trimNote = '',
    int? qtyRMA,
    String? inventoryUpdated = '',
    String? trimProducedBy = '',
    String? slitProducedBy = '',
    String? inventoryInvoiced = '',
    String? dripStop = '',
    String? productionDelay = '',
    String? doNotSendToConnex = '',
    bool? slitAssignment,
    String? exportedMarxman = '',
    String? rateBeforeDripStop = '',
    String? editAfterConnex = '',
    String? rowVersion = '',
    String? selectRMA = '',
    int? partialQty,
    String? printStock = '',
    String? pitch = '',
    String? selectSlitDone = '',
    String? adjustedBlank = '',
    String? purchaseCost = '',
    String? margin = '',
    String? discount = '',
    String? coilTagNumber = '',
    String? coilUsed = '',
    String? coilTagUser = '',
    String? coilTagTS = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List TblOrdersDetail',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'ID': id,
        'OrderID': orderID,
        'ItemRef_ListID': itemRefListID,
        'Description': description,
        'QtyPanels': qtyPanels,
        'LengthFeet': lengthFeet,
        'LengthInches': lengthInches,
        'LengthTotal': lengthTotal,
        'Quantity': quantity,
        'SizeFeet': sizeFeet,
        'SizeInches': sizeInches,
        'SizeTotal': sizeTotal,
        'Gauge': gauge,
        'Color': color,
        'Girth': girth,
        'Rate': rate,
        'Amount': amount,
        'LineItem': lineItem,
        'RateOriginal': rateOriginal,
        'AmountOriginal': amountOriginal,
        'PercentDisc': percentDisc,
        'ConnexJobID': connexJobID,
        'ConnexBatchID': connexBatchID,
        'Weight': weight,
        'PONumberID': pONumberID,
        'POSelect': pOSelect,
        'SlitDone': slitDone,
        'TrimDone': trimDone,
        'WrapDone': wrapDone,
        'PartsDone': partsDone,
        'RollDone': rollDone,
        'SoffitDone': soffitDone,
        'SlitStockQty': slitStockQty,
        'SlitStockDone': slitStockDone,
        'SlitStockPrint': slitStockPrint,
        'TrimStockQty': trimStockQty,
        'TrimStockDone': trimStockDone,
        'SlitNote': slitNote,
        'SlitStockNote': slitStockNote,
        'TrimNote': trimNote,
        'QtyRMA': qtyRMA,
        'InventoryUpdated': inventoryUpdated,
        'TrimProducedBy': trimProducedBy,
        'SlitProducedBy': slitProducedBy,
        'InventoryInvoiced': inventoryInvoiced,
        'DripStop': dripStop,
        'ProductionDelay': productionDelay,
        'DoNotSendToConnex': doNotSendToConnex,
        'SlitAssignment': slitAssignment,
        'ExportedMarxman': exportedMarxman,
        'RateBeforeDripStop': rateBeforeDripStop,
        'EditAfterConnex': editAfterConnex,
        'RowVersion': rowVersion,
        'SelectRMA': selectRMA,
        'PartialQty': partialQty,
        'PrintStock': printStock,
        'Pitch': pitch,
        'SelectSlitDone': selectSlitDone,
        'AdjustedBlank': adjustedBlank,
        'PurchaseCost': purchaseCost,
        'Margin': margin,
        'Discount': discount,
        'CoilTagNumber': coilTagNumber,
        'CoilUsed': coilUsed,
        'CoilTagUser': coilTagUser,
        'CoilTagTS': coilTagTS,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewTblOrdersDetailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "OrderID": 60056,
  "ItemRef_ListID": "800025DC-1367510406",
  "Description": "Strong Rib, 2690",
  "QtyPanels": 34,
  "LengthFeet": "",
  "LengthInches": "285",
  "LengthTotal": 23.75,
  "Quantity": 807.5,
  "SizeFeet": "",
  "SizeInches": "",
  "SizeTotal": 0,
  "Gauge": "26",
  "Color": "Cocoa Brown",
  "Girth": 0,
  "Rate": 2.73,
  "Amount": 2204.475,
  "LineItem": 1,
  "RateOriginal": 2.73,
  "AmountOriginal": 2204.475,
  "PercentDisc": 0,
  "ConnexJobID": 0,
  "ConnexBatchID": 0,
  "Weight": 2180.25,
  "PONumberID": "",
  "POSelect": "False",
  "SlitDone": false,
  "TrimDone": false,
  "WrapDone": false,
  "PartsDone": false,
  "RollDone": false,
  "SoffitDone": false,
  "SlitStockQty": 0,
  "SlitStockDone": true,
  "SlitStockPrint": "False",
  "TrimStockQty": 0,
  "TrimStockDone": true,
  "SlitNote": "",
  "SlitStockNote": "",
  "TrimNote": "",
  "QtyRMA": 0,
  "InventoryUpdated": "False",
  "TrimProducedBy": "",
  "SlitProducedBy": "",
  "InventoryInvoiced": "True",
  "DripStop": "False",
  "ProductionDelay": "False",
  "DoNotSendToConnex": "False",
  "SlitAssignment": false,
  "ExportedMarxman": "False",
  "RateBeforeDripStop": 0,
  "EditAfterConnex": "False",
  "RowVersion": "System.Byte[]",
  "SelectRMA": "False",
  "PartialQty": 0,
  "PrintStock": "False",
  "Pitch": "",
  "SelectSlitDone": "False",
  "AdjustedBlank": 0,
  "PurchaseCost": 2.9827,
  "Margin": -0.0925,
  "Discount": "",
  "CoilTagNumber": "",
  "CoilUsed": 0,
  "CoilTagUser": "",
  "CoilTagTS": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new TblOrdersDetail',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTblOrdersDetailByIDCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get TblOrdersDetail by ID',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTblOrdersDetailCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "OrderID": 60056,
  "ItemRef_ListID": "800025DC-1367510406",
  "Description": "Strong Rib, 2690",
  "QtyPanels": 34,
  "LengthFeet": "",
  "LengthInches": "285",
  "LengthTotal": 23.75,
  "Quantity": 807.5,
  "SizeFeet": "",
  "SizeInches": "",
  "SizeTotal": 0,
  "Gauge": "26",
  "Color": "Cocoa Brown",
  "Girth": 0,
  "Rate": 2.73,
  "Amount": 2204.475,
  "LineItem": 1,
  "RateOriginal": 2.73,
  "AmountOriginal": 2204.475,
  "PercentDisc": 0,
  "ConnexJobID": 0,
  "ConnexBatchID": 0,
  "Weight": 2180.25,
  "PONumberID": "",
  "POSelect": "False",
  "SlitDone": false,
  "TrimDone": false,
  "WrapDone": false,
  "PartsDone": false,
  "RollDone": false,
  "SoffitDone": false,
  "SlitStockQty": 0,
  "SlitStockDone": true,
  "SlitStockPrint": "False",
  "TrimStockQty": 0,
  "TrimStockDone": true,
  "SlitNote": "",
  "SlitStockNote": "",
  "TrimNote": "",
  "QtyRMA": 0,
  "InventoryUpdated": "False",
  "TrimProducedBy": "",
  "SlitProducedBy": "",
  "InventoryInvoiced": "True",
  "DripStop": "False",
  "ProductionDelay": "False",
  "DoNotSendToConnex": "False",
  "SlitAssignment": false,
  "ExportedMarxman": "False",
  "RateBeforeDripStop": 0,
  "EditAfterConnex": "False",
  "RowVersion": "System.Byte[]",
  "SelectRMA": "False",
  "PartialQty": 0,
  "PrintStock": "False",
  "Pitch": "",
  "SelectSlitDone": "False",
  "AdjustedBlank": 0,
  "PurchaseCost": 2.9827,
  "Margin": -0.0925,
  "Discount": "",
  "CoilTagNumber": "",
  "CoilUsed": 0,
  "CoilTagUser": "",
  "CoilTagTS": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update TblOrdersDetail',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListTblOrdersCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? orderNumber,
    int? customerID,
    int? jobDeliveryID,
    String? jobDeliveryType = '',
    String? orderType = '',
    String? orderHeader = '',
    String? orderSubType = '',
    String? orderStatus = '',
    String? orderSortOrder = '',
    String? orderPO = '',
    String? productionDate = '',
    String? orderDeliveryTime = '',
    String? orderDeliveryDate = '',
    String? orderDeliveryWt = '',
    String? orderCustomerPONo = '',
    int? orderDataEntry,
    String? orderApprovalDate = '',
    String? orderApprovedBy = '',
    String? orderLocked = '',
    String? orderLockedDate = '',
    String? orderSONumber = '',
    String? orderMemo = '',
    String? orderDiscount = '',
    String? orderDate = '',
    String? orderTaxDescription = '',
    String? orderSlitterStatus = '',
    String? orderSlitterDoneDate = '',
    String? orderSlitterElapsedTime = '',
    String? orderSlitterEstTime = '',
    String? orderTrimStatus = '',
    String? orderTrimDoneDate = '',
    String? orderTrimElapsedTime = '',
    String? orderTrimEstTime = '',
    String? orderRollStatus = '',
    String? orderRollDoneDate = '',
    String? orderRollElapsedTime = '',
    String? orderRollEstTime = '',
    String? orderWrapStatus = '',
    String? orderWrapDoneDate = '',
    String? orderWrapElapsedTime = '',
    String? orderWrapEstTime = '',
    String? orderLoadStatus = '',
    String? orderLoadDoneDate = '',
    String? orderLoadElapsedTime = '',
    String? orderLoadEstTime = '',
    String? orderDeliveryStatus = '',
    String? orderDeliveryDoneDate = '',
    String? orderDeliveryElapsedTime = '',
    String? orderDeliveryEstTime = '',
    String? packageType = '',
    String? barcode = '',
    int? orderTruckID,
    int? orderLoadSquence,
    String? orderETA = '',
    String? orderOldDeliveryDate = '',
    String? orderDropNumber = '',
    int? orderDriveTime,
    String? orderArriveDate = '',
    String? orderArriveTime = '',
    int? orderNoPanelSkids,
    int? orderNoTrimBoxes,
    int? orderNoBags,
    String? orderDeliveryNote = '',
    String? sSMATimeStamp = '',
    String? orderTimeStamp = '',
    String? loadDate = '',
    String? loadNum = '',
    String? loadTimeStamp = '',
    int? backOrderID,
    String? doneTimeStamp = '',
    String? orderPartStatus = '',
    String? orderPartDoneDate = '',
    String? orderPartElapsedTime = '',
    String? orderPartEstTime = '',
    String? orderSoffitStatus = '',
    String? orderSoffitDoneDate = '',
    String? orderSoffitElapsedTime = '',
    String? orderSoffitEstTime = '',
    int? billToID,
    String? billAddress = '',
    String? billCity = '',
    String? billState = '',
    String? billZip = '',
    int? shipToID,
    String? shipAddress = '',
    String? shipCity = '',
    String? shipState = '',
    String? shipZip = '',
    int? jobID,
    String? jobName = '',
    String? jobContact = '',
    String? jobContactPhone = '',
    String? jobAddress = '',
    String? jobCity = '',
    String? jobState = '',
    String? jobZip = '',
    String? jobDeliveryNote = '',
    int? deliveryLocation,
    String? originatorID = '',
    String? originatorPhoneNumber = '',
    String? territoryManagerRefID = '',
    String? salesRepID = '',
    int? pricingLevelID,
    String? termsRefListID = '',
    String? subTotal = '',
    String? discount = '',
    String? freight = '',
    String? salesTaxRefName = '',
    String? salesTaxRate = '',
    String? salesTaxTotal = '',
    String? orderTotal = '',
    String? jobPhone = '',
    String? sentEmailSalesOrder = '',
    String? printedSalesOrder = '',
    int? estimateID,
    int? orderStatusID,
    String? salesTaxCodeRefListID = '',
    String? discountRate = '',
    int? orderDeliveryVia,
    String? internalNote = '',
    String? salesNote = '',
    String? orderStatusTS = '',
    String? requestDate = '',
    String? manualDiscount = '',
    String? isNew = '',
    String? overrideWeight = '',
    String? lock = '',
    String? lockUser = '',
    String? orderProductionDate = '',
    String? overrideAutoDate = '',
    int? companySubmitted,
    String? submittedBy = '',
    String? submittedAt = '',
    int? companyImportedTo,
    String? importedBy = '',
    String? importedAt = '',
    int? submittedByOrderNumber,
    String? submittedByOrderSONumber = '',
    int? importedByOrderNumber,
    String? importedByOrderSONumber = '',
    String? importedByCompleted = '',
    String? exportedPackages = '',
    String? noDSReport = '',
    String? toBeInvoiced = '',
    String? invoiced = '',
    String? salesTaxCode = '',
    String? unlockAuthorize = '',
    String? rMAProcess = '',
    String? displayAt = '',
    String? unlockAuthorizeTS = '',
    String? orderTotalNoTax = '',
    String? auditHeaderInsert = '',
    String? weightEmailSent = '',
    String? weightWhenEmailed = '',
    String? lengthWhenEmailed = '',
    String? orderTransferTS = '',
    String? isBackOrder = '',
    String? dropsheetNumber = '',
    String? orm = '',
    String? transferDelay = '',
    int? centerID,
    String? importedLabel = '',
    String? packPath = '',
    String? createdBy = '',
    String? createdAt = '',
    String? orderUnlocked = '',
    String? orderUnlockedTS = '',
    String? orderUnlockedBy = '',
    String? toBeInvoicedBy = '',
    String? lat = '',
    String? lng = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List TblOrders',
      apiUrl: '${baseUrl}/table/dbo.tblOrders',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'OrderNumber': orderNumber,
        'CustomerID': customerID,
        'JobDeliveryID': jobDeliveryID,
        'JobDeliveryType': jobDeliveryType,
        'OrderType': orderType,
        'OrderHeader': orderHeader,
        'OrderSubType': orderSubType,
        'OrderStatus': orderStatus,
        'OrderSortOrder': orderSortOrder,
        'OrderPO': orderPO,
        'ProductionDate': productionDate,
        'OrderDeliveryTime': orderDeliveryTime,
        'OrderDeliveryDate': orderDeliveryDate,
        'OrderDeliveryWt': orderDeliveryWt,
        'OrderCustomerPONo': orderCustomerPONo,
        'OrderDataEntry': orderDataEntry,
        'OrderApprovalDate': orderApprovalDate,
        'OrderApprovedBy': orderApprovedBy,
        'OrderLocked': orderLocked,
        'OrderLockedDate': orderLockedDate,
        'OrderSONumber': orderSONumber,
        'OrderMemo': orderMemo,
        'OrderDiscount': orderDiscount,
        'OrderDate': orderDate,
        'OrderTaxDescription': orderTaxDescription,
        'OrderSlitterStatus': orderSlitterStatus,
        'OrderSlitterDoneDate': orderSlitterDoneDate,
        'OrderSlitterElapsedTime': orderSlitterElapsedTime,
        'OrderSlitterEstTime': orderSlitterEstTime,
        'OrderTrimStatus': orderTrimStatus,
        'OrderTrimDoneDate': orderTrimDoneDate,
        'OrderTrimElapsedTime': orderTrimElapsedTime,
        'OrderTrimEstTime': orderTrimEstTime,
        'OrderRollStatus': orderRollStatus,
        'OrderRollDoneDate': orderRollDoneDate,
        'OrderRollElapsedTime': orderRollElapsedTime,
        'OrderRollEstTime': orderRollEstTime,
        'OrderWrapStatus': orderWrapStatus,
        'OrderWrapDoneDate': orderWrapDoneDate,
        'OrderWrapElapsedTime': orderWrapElapsedTime,
        'OrderWrapEstTime': orderWrapEstTime,
        'OrderLoadStatus': orderLoadStatus,
        'OrderLoadDoneDate': orderLoadDoneDate,
        'OrderLoadElapsedTime': orderLoadElapsedTime,
        'OrderLoadEstTime': orderLoadEstTime,
        'OrderDeliveryStatus': orderDeliveryStatus,
        'OrderDeliveryDoneDate': orderDeliveryDoneDate,
        'OrderDeliveryElapsedTime': orderDeliveryElapsedTime,
        'OrderDeliveryEstTime': orderDeliveryEstTime,
        'PackageType': packageType,
        'Barcode': barcode,
        'OrderTruckID': orderTruckID,
        'OrderLoadSquence': orderLoadSquence,
        'OrderETA': orderETA,
        'OrderOldDeliveryDate': orderOldDeliveryDate,
        'OrderDropNumber': orderDropNumber,
        'OrderDriveTime': orderDriveTime,
        'OrderArriveDate': orderArriveDate,
        'OrderArriveTime': orderArriveTime,
        'OrderNoPanelSkids': orderNoPanelSkids,
        'OrderNoTrimBoxes': orderNoTrimBoxes,
        'OrderNoBags': orderNoBags,
        'OrderDeliveryNote': orderDeliveryNote,
        'SSMA_TimeStamp': sSMATimeStamp,
        'OrderTimeStamp': orderTimeStamp,
        'LoadDate': loadDate,
        'LoadNum': loadNum,
        'LoadTimeStamp': loadTimeStamp,
        'BackOrderID': backOrderID,
        'DoneTimeStamp': doneTimeStamp,
        'OrderPartStatus': orderPartStatus,
        'OrderPartDoneDate': orderPartDoneDate,
        'OrderPartElapsedTime': orderPartElapsedTime,
        'OrderPartEstTime': orderPartEstTime,
        'OrderSoffitStatus': orderSoffitStatus,
        'OrderSoffitDoneDate': orderSoffitDoneDate,
        'OrderSoffitElapsedTime': orderSoffitElapsedTime,
        'OrderSoffitEstTime': orderSoffitEstTime,
        'BillToID': billToID,
        'BillAddress': billAddress,
        'BillCity': billCity,
        'BillState': billState,
        'BillZip': billZip,
        'ShipToID': shipToID,
        'ShipAddress': shipAddress,
        'ShipCity': shipCity,
        'ShipState': shipState,
        'ShipZip': shipZip,
        'JobID': jobID,
        'JobName': jobName,
        'JobContact': jobContact,
        'JobContactPhone': jobContactPhone,
        'JobAddress': jobAddress,
        'JobCity': jobCity,
        'JobState': jobState,
        'JobZip': jobZip,
        'JobDeliveryNote': jobDeliveryNote,
        'DeliveryLocation': deliveryLocation,
        'OriginatorID': originatorID,
        'OriginatorPhoneNumber': originatorPhoneNumber,
        'TerritoryManagerRefID': territoryManagerRefID,
        'SalesRepID': salesRepID,
        'PricingLevelID': pricingLevelID,
        'TermsRef_ListID': termsRefListID,
        'SubTotal': subTotal,
        'Discount': discount,
        'Freight': freight,
        'SalesTaxRefName': salesTaxRefName,
        'SalesTaxRate': salesTaxRate,
        'SalesTaxTotal': salesTaxTotal,
        'OrderTotal': orderTotal,
        'JobPhone': jobPhone,
        'SentEmailSalesOrder': sentEmailSalesOrder,
        'PrintedSalesOrder': printedSalesOrder,
        'EstimateID': estimateID,
        'OrderStatusID': orderStatusID,
        'SalesTaxCodeRef_ListID': salesTaxCodeRefListID,
        'DiscountRate': discountRate,
        'OrderDeliveryVia': orderDeliveryVia,
        'InternalNote': internalNote,
        'SalesNote': salesNote,
        'OrderStatusTS': orderStatusTS,
        'RequestDate': requestDate,
        'ManualDiscount': manualDiscount,
        'IsNew': isNew,
        'OverrideWeight': overrideWeight,
        'Lock': lock,
        'LockUser': lockUser,
        'OrderProductionDate': orderProductionDate,
        'OverrideAutoDate': overrideAutoDate,
        'CompanySubmitted': companySubmitted,
        'SubmittedBy': submittedBy,
        'SubmittedAt': submittedAt,
        'CompanyImportedTo': companyImportedTo,
        'ImportedBy': importedBy,
        'ImportedAt': importedAt,
        'SubmittedByOrderNumber': submittedByOrderNumber,
        'SubmittedByOrderSONumber': submittedByOrderSONumber,
        'ImportedByOrderNumber': importedByOrderNumber,
        'ImportedByOrderSONumber': importedByOrderSONumber,
        'ImportedByCompleted': importedByCompleted,
        'ExportedPackages': exportedPackages,
        'NoDSReport': noDSReport,
        'ToBeInvoiced': toBeInvoiced,
        'Invoiced': invoiced,
        'SalesTaxCode': salesTaxCode,
        'UnlockAuthorize': unlockAuthorize,
        'RMAProcess': rMAProcess,
        'DisplayAt': displayAt,
        'UnlockAuthorizeTS': unlockAuthorizeTS,
        'OrderTotalNoTax': orderTotalNoTax,
        'AuditHeaderInsert': auditHeaderInsert,
        'WeightEmailSent': weightEmailSent,
        'WeightWhenEmailed': weightWhenEmailed,
        'LengthWhenEmailed': lengthWhenEmailed,
        'OrderTransferTS': orderTransferTS,
        'IsBackOrder': isBackOrder,
        'DropsheetNumber': dropsheetNumber,
        'ORM': orm,
        'TransferDelay': transferDelay,
        'CenterID': centerID,
        'ImportedLabel': importedLabel,
        'PackPath': packPath,
        'CreatedBy': createdBy,
        'CreatedAt': createdAt,
        'OrderUnlocked': orderUnlocked,
        'OrderUnlockedTS': orderUnlockedTS,
        'OrderUnlockedBy': orderUnlockedBy,
        'ToBeInvoicedBy': toBeInvoicedBy,
        'Lat': lat,
        'Lng': lng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewTblOrdersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CustomerID": 4332,
  "JobDeliveryID": 0,
  "JobDeliveryType": "",
  "OrderType": "Sales Orders",
  "OrderHeader": "False",
  "OrderSubType": "7",
  "OrderStatus": "PRODUCED",
  "OrderSortOrder": "d",
  "OrderPO": "53739-SO",
  "ProductionDate": "10/2/2020 12:00:00 AM",
  "OrderDeliveryTime": "",
  "OrderDeliveryDate": "",
  "OrderDeliveryWt": 975,
  "OrderCustomerPONo": "a",
  "OrderDataEntry": 1,
  "OrderApprovalDate": "",
  "OrderApprovedBy": "",
  "OrderLocked": "False",
  "OrderLockedDate": "",
  "OrderSONumber": "4347-SO",
  "OrderMemo": "Coils used: 01020143286705,01080029128904,01020143463506,01080029128904\\r\\nCoils used: 01020143286705,01080029128904,01020143463506,01080029128904\\r\\nCoils used: 01020143286705,01080029128904,01020143463506,01080029128904\\r\\nCoils used: 01020143286705,01080029128904,01020143463506,01080029128904\\r\\nCoils used: 01020143582709,01020144060901\\r\\nCoils used: 01020143582709,01020144060901",
  "OrderDiscount": 0,
  "OrderDate": "10/2/2020 12:00:00 AM",
  "OrderTaxDescription": "AM",
  "OrderSlitterStatus": "DONE",
  "OrderSlitterDoneDate": "8/20/2015 12:49:08 PM",
  "OrderSlitterElapsedTime": 0.0002,
  "OrderSlitterEstTime": 0,
  "OrderTrimStatus": "DONE",
  "OrderTrimDoneDate": "8/20/2015 12:49:11 PM",
  "OrderTrimElapsedTime": 0.0002,
  "OrderTrimEstTime": 0,
  "OrderRollStatus": "DONE",
  "OrderRollDoneDate": "8/20/2015 12:49:13 PM",
  "OrderRollElapsedTime": 0.0002,
  "OrderRollEstTime": 0,
  "OrderWrapStatus": "DONE",
  "OrderWrapDoneDate": "10/5/2020 11:28:18 AM",
  "OrderWrapElapsedTime": 0.0002,
  "OrderWrapEstTime": 0,
  "OrderLoadStatus": "Delivered",
  "OrderLoadDoneDate": "8/27/2015 1:23:50 PM",
  "OrderLoadElapsedTime": 30,
  "OrderLoadEstTime": 0,
  "OrderDeliveryStatus": "Delivered",
  "OrderDeliveryDoneDate": "",
  "OrderDeliveryElapsedTime": 0,
  "OrderDeliveryEstTime": 0,
  "PackageType": "",
  "Barcode": "",
  "OrderTruckID": 43,
  "OrderLoadSquence": 0,
  "OrderETA": "",
  "OrderOldDeliveryDate": "8/8/2015 12:00:00 AM",
  "OrderDropNumber": "",
  "OrderDriveTime": 0,
  "OrderArriveDate": "",
  "OrderArriveTime": "",
  "OrderNoPanelSkids": 0,
  "OrderNoTrimBoxes": 0,
  "OrderNoBags": 0,
  "OrderDeliveryNote": "",
  "SSMA_TimeStamp": "System.Byte[]",
  "OrderTimeStamp": "10/8/2020 3:46:38 PM",
  "LoadDate": "",
  "LoadNum": "",
  "LoadTimeStamp": "",
  "BackOrderID": 0,
  "DoneTimeStamp": "10/5/2020 11:28:18 AM",
  "OrderPartStatus": "NA",
  "OrderPartDoneDate": "",
  "OrderPartElapsedTime": 0,
  "OrderPartEstTime": 0,
  "OrderSoffitStatus": "NA",
  "OrderSoffitDoneDate": "",
  "OrderSoffitElapsedTime": 0,
  "OrderSoffitEstTime": 0,
  "BillToID": 4332,
  "BillAddress": "29033 Co Rd 17",
  "BillCity": "Freeport",
  "BillState": "MN",
  "BillZip": "56331",
  "ShipToID": 4332,
  "ShipAddress": "29033 Co Rd 17",
  "ShipCity": "Freeport",
  "ShipState": "MN",
  "ShipZip": "56331",
  "JobID": 32280,
  "JobName": "Carstensens Rental",
  "JobContact": "",
  "JobContactPhone": "",
  "JobAddress": "700 Cannon Blvd",
  "JobCity": "Cannon Falls",
  "JobState": "MN",
  "JobZip": "55009",
  "JobDeliveryNote": "",
  "DeliveryLocation": 0,
  "OriginatorID": "6003",
  "OriginatorPhoneNumber": "3208367200",
  "TerritoryManagerRefID": "80000007-1671722715",
  "SalesRepID": "",
  "PricingLevelID": 13,
  "TermsRef_ListID": "80000006-1670944546",
  "SubTotal": 0,
  "Discount": 0,
  "Freight": 100,
  "SalesTaxRefName": "NO TAX",
  "SalesTaxRate": 0,
  "SalesTaxTotal": 0,
  "OrderTotal": 100,
  "JobPhone": "3208362372",
  "SentEmailSalesOrder": "True",
  "PrintedSalesOrder": "False",
  "EstimateID": 0,
  "OrderStatusID": 8,
  "SalesTaxCodeRef_ListID": "",
  "DiscountRate": 0,
  "OrderDeliveryVia": 24,
  "InternalNote": "",
  "SalesNote": "",
  "OrderStatusTS": "10/2/2020 2:55:21 PM",
  "RequestDate": "10/7/2020 12:00:00 AM",
  "ManualDiscount": "False",
  "IsNew": "False",
  "OverrideWeight": "True",
  "Lock": "False",
  "LockUser": "",
  "OrderProductionDate": "10/2/2020 2:55:21 PM",
  "OverrideAutoDate": "True",
  "CompanySubmitted": 0,
  "SubmittedBy": "",
  "SubmittedAt": "",
  "CompanyImportedTo": 0,
  "ImportedBy": "",
  "ImportedAt": "",
  "SubmittedByOrderNumber": 0,
  "SubmittedByOrderSONumber": "",
  "ImportedByOrderNumber": 0,
  "ImportedByOrderSONumber": "",
  "ImportedByCompleted": "False",
  "ExportedPackages": "False",
  "NoDSReport": "False",
  "ToBeInvoiced": "False",
  "Invoiced": "False",
  "SalesTaxCode": "",
  "UnlockAuthorize": "False",
  "RMAProcess": "False",
  "DisplayAt": "",
  "UnlockAuthorizeTS": "",
  "OrderTotalNoTax": 100,
  "AuditHeaderInsert": "False",
  "WeightEmailSent": "False",
  "WeightWhenEmailed": 0,
  "LengthWhenEmailed": 0,
  "OrderTransferTS": "",
  "IsBackOrder": "False",
  "DropsheetNumber": "",
  "ORM": "",
  "TransferDelay": "",
  "CenterID": 1,
  "ImportedLabel": "False",
  "PackPath": "",
  "CreatedBy": "",
  "CreatedAt": "",
  "OrderUnlocked": "False",
  "OrderUnlockedTS": "",
  "OrderUnlockedBy": "",
  "ToBeInvoicedBy": "",
  "Lat": 0,
  "Lng": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new TblOrders',
      apiUrl: '${baseUrl}/table/dbo.tblOrders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTblOrdersByIDCall {
  Future<ApiCallResponse> call({
    int? ordernumber,
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get TblOrders by ID',
      apiUrl: '${baseUrl}/table/dbo.tblOrders/${ordernumber}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTblOrdersCall {
  Future<ApiCallResponse> call({
    int? ordernumber,
    bool? unlockauthorize,
    String? unlockauthorizetm = '',
    bool? orderunlocked,
    String? orderunlockedts = '',
    String? orderunlockedby = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "UnlockAuthorize": "${unlockauthorize}",
  "UnlockAuthorizeTS": "${unlockauthorizetm}",
  "OrderUnlocked": "${orderunlocked}",
  "OrderUnlockedTS": "${orderunlockedts}",
  "OrderUnlockedBy": "${orderunlockedby}"
 }''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update TblOrders',
      apiUrl: '${baseUrl}/table/dbo.tblOrders/${ordernumber}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListDboVwProductionAltCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? orderNumber,
    String? orderStatus = '',
    int? orderStatusID,
    String? productionDate = '',
    String? orderCustomerPONo = '',
    String? orderSortOrder = '',
    int? jobID,
    String? orderSONumber = '',
    String? customerName = '',
    String? jobName = '',
    String? orderTaxDescription = '',
    String? orderDiscount = '',
    String? orderSlitterStatus = '',
    int? orderTruckID,
    String? orderMemo = '',
    String? orderTrimStatus = '',
    String? orderRollStatus = '',
    String? orderWrapStatus = '',
    String? orderSubType = '',
    int? orderDeliveryVia,
    String? orderLoadStatus = '',
    String? orderDeliveryStatus = '',
    String? orderPO = '',
    String? orderTimeStamp = '',
    String? orderDeliveryWt = '',
    String? loadNum = '',
    String? loadDate = '',
    int? sortStatus,
    int? oSlit,
    int? oTrim,
    int? oRoll,
    int? oWrap,
    int? oPart,
    int? oSoffit,
    String? prodStatus = '',
    int? rMASort,
    int? closeSort,
    int? productionStarted,
    int? sortDelivery,
    int? backOrderID,
    String? doneTimeStamp = '',
    String? orderPartStatus = '',
    String? orderSoffitStatus = '',
    String? route = '',
    int? routePriority,
    String? orderDropDate = '',
    int? fkOrderID,
    String? shipVia = '',
    String? noDSReport = '',
    String? rMAProcess = '',
    String? percentScanned = '',
    int? productionYear,
    String? scannedTM = '',
    String? unlockAuthorize = '',
    String? unlockAuthorizeTS = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Dbo.vwProductionAlt',
      apiUrl: '${baseUrl}/view/dbo.vwProductionAlt',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'OrderNumber': orderNumber,
        'OrderStatus': orderStatus,
        'OrderStatusID': orderStatusID,
        'ProductionDate': productionDate,
        'OrderCustomerPONo': orderCustomerPONo,
        'OrderSortOrder': orderSortOrder,
        'JobID': jobID,
        'OrderSONumber': orderSONumber,
        'CustomerName': customerName,
        'JobName': jobName,
        'OrderTaxDescription': orderTaxDescription,
        'OrderDiscount': orderDiscount,
        'OrderSlitterStatus': orderSlitterStatus,
        'OrderTruckID': orderTruckID,
        'OrderMemo': orderMemo,
        'OrderTrimStatus': orderTrimStatus,
        'OrderRollStatus': orderRollStatus,
        'OrderWrapStatus': orderWrapStatus,
        'OrderSubType': orderSubType,
        'OrderDeliveryVia': orderDeliveryVia,
        'OrderLoadStatus': orderLoadStatus,
        'OrderDeliveryStatus': orderDeliveryStatus,
        'OrderPO': orderPO,
        'OrderTimeStamp': orderTimeStamp,
        'OrderDeliveryWt': orderDeliveryWt,
        'LoadNum': loadNum,
        'LoadDate': loadDate,
        'SortStatus': sortStatus,
        'OSlit': oSlit,
        'OTrim': oTrim,
        'ORoll': oRoll,
        'OWrap': oWrap,
        'OPart': oPart,
        'OSoffit': oSoffit,
        'ProdStatus': prodStatus,
        'RMASort': rMASort,
        'CloseSort': closeSort,
        'ProductionStarted': productionStarted,
        'SortDelivery': sortDelivery,
        'BackOrderID': backOrderID,
        'DoneTimeStamp': doneTimeStamp,
        'OrderPartStatus': orderPartStatus,
        'OrderSoffitStatus': orderSoffitStatus,
        'Route': route,
        'RoutePriority': routePriority,
        'OrderDropDate': orderDropDate,
        'fkOrderID': fkOrderID,
        'ShipVia': shipVia,
        'NoDSReport': noDSReport,
        'RMAProcess': rMAProcess,
        'PercentScanned': percentScanned,
        'ProductionYear': productionYear,
        'ScannedTM': scannedTM,
        'UnlockAuthorize': unlockAuthorize,
        'UnlockAuthorizeTS': unlockAuthorizeTS,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListDboVwUnlockOrderAPICall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? orderNumber,
    String? orderStatus = '',
    int? orderStatusID,
    String? productionDate = '',
    String? orderSONumber = '',
    String? customerName = '',
    String? jobName = '',
    String? orderSlitterStatus = '',
    String? orderTrimStatus = '',
    String? orderRollStatus = '',
    String? orderWrapStatus = '',
    String? orderSoffitStatus = '',
    String? orderPartStatus = '',
    String? orderPO = '',
    String? orderTimeStamp = '',
    String? orderDeliveryWt = '',
    String? unlockAuthorize = '',
    String? unlockAuthorizeTS = '',
    String? orderDate = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Dbo.vwUnlockOrderAPI',
      apiUrl: '${baseUrl}/view/dbo.vwUnlockOrderAPI',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'OrderNumber': orderNumber,
        'OrderStatus': orderStatus,
        'OrderStatusID': orderStatusID,
        'ProductionDate': productionDate,
        'OrderSONumber': orderSONumber,
        'CustomerName': customerName,
        'JobName': jobName,
        'OrderSlitterStatus': orderSlitterStatus,
        'OrderTrimStatus': orderTrimStatus,
        'OrderRollStatus': orderRollStatus,
        'OrderWrapStatus': orderWrapStatus,
        'OrderSoffitStatus': orderSoffitStatus,
        'OrderPartStatus': orderPartStatus,
        'OrderPO': orderPO,
        'OrderTimeStamp': orderTimeStamp,
        'OrderDeliveryWt': orderDeliveryWt,
        'UnlockAuthorize': unlockAuthorize,
        'UnlockAuthorizeTS': unlockAuthorizeTS,
        'OrderDate': orderDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Unlock Orders ApiFlow API Group Code

/// Start Unlock Orders ApiFlow API - V2 Group Code

class UnlockOrdersApiFlowAPIV2Group {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/9ee5de36ed61483e8fc12dfd202e56f5';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
  };
  static ListTblUserCall listTblUserCall = ListTblUserCall();
  static CreateNewTblUserCall createNewTblUserCall = CreateNewTblUserCall();
  static GenerateLinkForTblUserPasswordECall
      generateLinkForTblUserPasswordECall =
      GenerateLinkForTblUserPasswordECall();
  static GetTblUserByIDCall getTblUserByIDCall = GetTblUserByIDCall();
  static UpdateTblUserCall updateTblUserCall = UpdateTblUserCall();
  static CallDboUspUpdateEncryptedPasswordProcedureCall
      callDboUspUpdateEncryptedPasswordProcedureCall =
      CallDboUspUpdateEncryptedPasswordProcedureCall();
  static CallDboFnUserTableFunctionCall callDboFnUserTableFunctionCall =
      CallDboFnUserTableFunctionCall();
}

class ListTblUserCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? userID,
    String? userName = '',
    String? userType = '',
    String? userPassword = '',
    int? groupID,
    String? passwordE = '',
    String? superUser = '',
    int? employeeID,
    String? listId = '',
    String? corporate = '',
    String? requiredUpdate = '',
    int? userTypeID,
    String? pinNumber = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List TblUser',
      apiUrl: '${baseUrl}/table/dbo.tblUser',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'UserID': userID,
        'UserName': userName,
        'UserType': userType,
        'UserPassword': userPassword,
        'GroupID': groupID,
        'PasswordE': passwordE,
        'SuperUser': superUser,
        'EmployeeID': employeeID,
        'ListId': listId,
        'Corporate': corporate,
        'RequiredUpdate': requiredUpdate,
        'UserTypeID': userTypeID,
        'PinNumber': pinNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewTblUserCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create new TblUser',
      apiUrl: '${baseUrl}/table/dbo.tblUser',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerateLinkForTblUserPasswordECall {
  Future<ApiCallResponse> call({
    int? userid,
    String? format = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Generate link for TblUser.PasswordE',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}/link/PasswordE',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {
        'format': format,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTblUserByIDCall {
  Future<ApiCallResponse> call({
    int? userid,
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get TblUser by ID',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTblUserCall {
  Future<ApiCallResponse> call({
    int? userid,
    String? pinnumber = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "PinNumber": "${pinnumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update TblUser',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CallDboUspUpdateEncryptedPasswordProcedureCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "@passphrase": "string",
  "@password": "string",
  "@UserID": 123
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Call dbo.usp_updateEncryptedPassword procedure',
      apiUrl: '${baseUrl}/sp/dbo.usp_updateencryptedpassword',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CallDboFnUserTableFunctionCall {
  Future<ApiCallResponse> call({
    int? userid,
    String? passphrase = '',
  }) async {
    final baseUrl = UnlockOrdersApiFlowAPIV2Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "@UserID": ${userid},
  "@PassPhrase": "${passphrase}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Call dbo.fnUserTable function',
      apiUrl: '${baseUrl}/udf/dbo.fnusertable',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NzE2YjgwNWFkYThkOTgwMTc0YTNlZGU2MjMxZmUwMmM=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Unlock Orders ApiFlow API - V2 Group Code

/// Start Unlock Orders Freeport ApiFlow API Group Code

class UnlockOrdersFreeportApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/42ba45a6923c4c8197a727d129b418f9';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
  };
  static ListTblOrdersFreeportCall listTblOrdersFreeportCall =
      ListTblOrdersFreeportCall();
  static CreateNewTblOrdersFreeportCall createNewTblOrdersFreeportCall =
      CreateNewTblOrdersFreeportCall();
  static GetTblOrdersByIDFreeportCall getTblOrdersByIDFreeportCall =
      GetTblOrdersByIDFreeportCall();
  static UpdateTblOrdersFreeportCall updateTblOrdersFreeportCall =
      UpdateTblOrdersFreeportCall();
  static DeleteTblOrdersCall deleteTblOrdersCall = DeleteTblOrdersCall();
  static ListTblUserFreeportCall listTblUserFreeportCall =
      ListTblUserFreeportCall();
  static CreateNewTblUserFreeportCall createNewTblUserFreeportCall =
      CreateNewTblUserFreeportCall();
  static GenerateLinkForTblUserPasswordEFreeportCall
      generateLinkForTblUserPasswordEFreeportCall =
      GenerateLinkForTblUserPasswordEFreeportCall();
  static GetTblUserByIDFreeportCall getTblUserByIDFreeportCall =
      GetTblUserByIDFreeportCall();
  static UpdateTblUserFreeportCall updateTblUserFreeportCall =
      UpdateTblUserFreeportCall();
  static DeleteTblUserFreeportCall deleteTblUserFreeportCall =
      DeleteTblUserFreeportCall();
  static ListTblOrdersDetailFreeportCall listTblOrdersDetailFreeportCall =
      ListTblOrdersDetailFreeportCall();
  static CreateNewTblOrdersDetailFreeportCall
      createNewTblOrdersDetailFreeportCall =
      CreateNewTblOrdersDetailFreeportCall();
  static GetTblOrdersDetailByIDFreeportCall getTblOrdersDetailByIDFreeportCall =
      GetTblOrdersDetailByIDFreeportCall();
  static UpdateTblOrdersDetailFreeportCall updateTblOrdersDetailFreeportCall =
      UpdateTblOrdersDetailFreeportCall();
  static DeleteTblOrdersDetailFreeportCall deleteTblOrdersDetailFreeportCall =
      DeleteTblOrdersDetailFreeportCall();
  static ListDbovwProductionAltFreeportCall listDbovwProductionAltFreeportCall =
      ListDbovwProductionAltFreeportCall();
  static ListDbovwUnlockOrderAPIFreeportCall
      listDbovwUnlockOrderAPIFreeportCall =
      ListDbovwUnlockOrderAPIFreeportCall();
  static CallDbouspupdateEncryptedPasswordProcedureFreeportCall
      callDbouspupdateEncryptedPasswordProcedureFreeportCall =
      CallDbouspupdateEncryptedPasswordProcedureFreeportCall();
  static CallDbofnUserTableFunctionFreeportCall
      callDbofnUserTableFunctionFreeportCall =
      CallDbofnUserTableFunctionFreeportCall();
}

class ListTblOrdersFreeportCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? orderNumber,
    int? customerID,
    int? jobDeliveryID,
    String? jobDeliveryType = '',
    String? orderType = '',
    String? orderHeader = '',
    String? orderSubType = '',
    String? orderStatus = '',
    String? orderSortOrder = '',
    String? orderPO = '',
    String? productionDate = '',
    String? orderDeliveryTime = '',
    String? orderDeliveryDate = '',
    String? orderDeliveryWt = '',
    String? orderCustomerPONo = '',
    int? orderDataEntry,
    String? orderApprovalDate = '',
    String? orderApprovedBy = '',
    String? orderLocked = '',
    String? orderLockedDate = '',
    String? orderSONumber = '',
    String? orderMemo = '',
    String? orderDiscount = '',
    String? orderDate = '',
    String? orderTaxDescription = '',
    String? orderSlitterStatus = '',
    String? orderSlitterDoneDate = '',
    String? orderSlitterElapsedTime = '',
    String? orderSlitterEstTime = '',
    String? orderTrimStatus = '',
    String? orderTrimDoneDate = '',
    String? orderTrimElapsedTime = '',
    String? orderTrimEstTime = '',
    String? orderRollStatus = '',
    String? orderRollDoneDate = '',
    String? orderRollElapsedTime = '',
    String? orderRollEstTime = '',
    String? orderWrapStatus = '',
    String? orderWrapDoneDate = '',
    String? orderWrapElapsedTime = '',
    String? orderWrapEstTime = '',
    String? orderLoadStatus = '',
    String? orderLoadDoneDate = '',
    String? orderLoadElapsedTime = '',
    String? orderLoadEstTime = '',
    String? orderDeliveryStatus = '',
    String? orderDeliveryDoneDate = '',
    String? orderDeliveryElapsedTime = '',
    String? orderDeliveryEstTime = '',
    String? packageType = '',
    String? barcode = '',
    int? orderTruckID,
    int? orderLoadSquence,
    String? orderETA = '',
    String? orderOldDeliveryDate = '',
    String? orderDropNumber = '',
    int? orderDriveTime,
    String? orderArriveDate = '',
    String? orderArriveTime = '',
    int? orderNoPanelSkids,
    int? orderNoTrimBoxes,
    int? orderNoBags,
    String? orderDeliveryNote = '',
    String? sSMATimeStamp = '',
    String? orderTimeStamp = '',
    String? loadDate = '',
    String? loadNum = '',
    String? loadTimeStamp = '',
    int? backOrderID,
    String? doneTimeStamp = '',
    String? orderPartStatus = '',
    String? orderPartDoneDate = '',
    String? orderPartElapsedTime = '',
    String? orderPartEstTime = '',
    String? orderSoffitStatus = '',
    String? orderSoffitDoneDate = '',
    String? orderSoffitElapsedTime = '',
    String? orderSoffitEstTime = '',
    int? billToID,
    String? billAddress = '',
    String? billCity = '',
    String? billState = '',
    String? billZip = '',
    int? shipToID,
    String? shipAddress = '',
    String? shipCity = '',
    String? shipState = '',
    String? shipZip = '',
    int? jobID,
    String? jobName = '',
    String? jobContact = '',
    String? jobContactPhone = '',
    String? jobAddress = '',
    String? jobCity = '',
    String? jobState = '',
    String? jobZip = '',
    String? jobDeliveryNote = '',
    int? deliveryLocation,
    String? originatorID = '',
    String? originatorPhoneNumber = '',
    String? territoryManagerRefID = '',
    String? salesRepID = '',
    int? pricingLevelID,
    String? termsRefListID = '',
    String? subTotal = '',
    String? discount = '',
    String? freight = '',
    String? salesTaxRefName = '',
    String? salesTaxRate = '',
    String? salesTaxTotal = '',
    String? orderTotal = '',
    String? jobPhone = '',
    String? sentEmailSalesOrder = '',
    String? printedSalesOrder = '',
    int? estimateID,
    int? orderStatusID,
    String? salesTaxCodeRefListID = '',
    String? discountRate = '',
    int? orderDeliveryVia,
    String? internalNote = '',
    String? salesNote = '',
    String? orderStatusTS = '',
    String? requestDate = '',
    String? manualDiscount = '',
    String? isNew = '',
    String? overrideWeight = '',
    String? lock = '',
    String? lockUser = '',
    String? orderProductionDate = '',
    String? overrideAutoDate = '',
    int? companySubmitted,
    String? submittedBy = '',
    String? submittedAt = '',
    int? companyImportedTo,
    String? importedBy = '',
    String? importedAt = '',
    int? submittedByOrderNumber,
    String? submittedByOrderSONumber = '',
    int? importedByOrderNumber,
    String? importedByOrderSONumber = '',
    String? importedByCompleted = '',
    String? exportedPackages = '',
    String? noDSReport = '',
    String? toBeInvoiced = '',
    String? invoiced = '',
    String? salesTaxCode = '',
    String? unlockAuthorize = '',
    String? rMAProcess = '',
    String? displayAt = '',
    String? unlockAuthorizeTS = '',
    String? orderTotalNoTax = '',
    String? auditHeaderInsert = '',
    String? weightEmailSent = '',
    String? weightWhenEmailed = '',
    String? lengthWhenEmailed = '',
    String? orderTransferTS = '',
    String? isBackOrder = '',
    String? dropsheetNumber = '',
    String? orm = '',
    String? transferDelay = '',
    int? centerID,
    String? importedLabel = '',
    String? packPath = '',
    String? createdBy = '',
    String? createdAt = '',
    String? orderUnlocked = '',
    String? orderUnlockedTS = '',
    String? orderUnlockedBy = '',
    String? toBeInvoicedBy = '',
    String? lat = '',
    String? lng = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List TblOrdersFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrders',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'OrderNumber': orderNumber,
        'CustomerID': customerID,
        'JobDeliveryID': jobDeliveryID,
        'JobDeliveryType': jobDeliveryType,
        'OrderType': orderType,
        'OrderHeader': orderHeader,
        'OrderSubType': orderSubType,
        'OrderStatus': orderStatus,
        'OrderSortOrder': orderSortOrder,
        'OrderPO': orderPO,
        'ProductionDate': productionDate,
        'OrderDeliveryTime': orderDeliveryTime,
        'OrderDeliveryDate': orderDeliveryDate,
        'OrderDeliveryWt': orderDeliveryWt,
        'OrderCustomerPONo': orderCustomerPONo,
        'OrderDataEntry': orderDataEntry,
        'OrderApprovalDate': orderApprovalDate,
        'OrderApprovedBy': orderApprovedBy,
        'OrderLocked': orderLocked,
        'OrderLockedDate': orderLockedDate,
        'OrderSONumber': orderSONumber,
        'OrderMemo': orderMemo,
        'OrderDiscount': orderDiscount,
        'OrderDate': orderDate,
        'OrderTaxDescription': orderTaxDescription,
        'OrderSlitterStatus': orderSlitterStatus,
        'OrderSlitterDoneDate': orderSlitterDoneDate,
        'OrderSlitterElapsedTime': orderSlitterElapsedTime,
        'OrderSlitterEstTime': orderSlitterEstTime,
        'OrderTrimStatus': orderTrimStatus,
        'OrderTrimDoneDate': orderTrimDoneDate,
        'OrderTrimElapsedTime': orderTrimElapsedTime,
        'OrderTrimEstTime': orderTrimEstTime,
        'OrderRollStatus': orderRollStatus,
        'OrderRollDoneDate': orderRollDoneDate,
        'OrderRollElapsedTime': orderRollElapsedTime,
        'OrderRollEstTime': orderRollEstTime,
        'OrderWrapStatus': orderWrapStatus,
        'OrderWrapDoneDate': orderWrapDoneDate,
        'OrderWrapElapsedTime': orderWrapElapsedTime,
        'OrderWrapEstTime': orderWrapEstTime,
        'OrderLoadStatus': orderLoadStatus,
        'OrderLoadDoneDate': orderLoadDoneDate,
        'OrderLoadElapsedTime': orderLoadElapsedTime,
        'OrderLoadEstTime': orderLoadEstTime,
        'OrderDeliveryStatus': orderDeliveryStatus,
        'OrderDeliveryDoneDate': orderDeliveryDoneDate,
        'OrderDeliveryElapsedTime': orderDeliveryElapsedTime,
        'OrderDeliveryEstTime': orderDeliveryEstTime,
        'PackageType': packageType,
        'Barcode': barcode,
        'OrderTruckID': orderTruckID,
        'OrderLoadSquence': orderLoadSquence,
        'OrderETA': orderETA,
        'OrderOldDeliveryDate': orderOldDeliveryDate,
        'OrderDropNumber': orderDropNumber,
        'OrderDriveTime': orderDriveTime,
        'OrderArriveDate': orderArriveDate,
        'OrderArriveTime': orderArriveTime,
        'OrderNoPanelSkids': orderNoPanelSkids,
        'OrderNoTrimBoxes': orderNoTrimBoxes,
        'OrderNoBags': orderNoBags,
        'OrderDeliveryNote': orderDeliveryNote,
        'SSMA_TimeStamp': sSMATimeStamp,
        'OrderTimeStamp': orderTimeStamp,
        'LoadDate': loadDate,
        'LoadNum': loadNum,
        'LoadTimeStamp': loadTimeStamp,
        'BackOrderID': backOrderID,
        'DoneTimeStamp': doneTimeStamp,
        'OrderPartStatus': orderPartStatus,
        'OrderPartDoneDate': orderPartDoneDate,
        'OrderPartElapsedTime': orderPartElapsedTime,
        'OrderPartEstTime': orderPartEstTime,
        'OrderSoffitStatus': orderSoffitStatus,
        'OrderSoffitDoneDate': orderSoffitDoneDate,
        'OrderSoffitElapsedTime': orderSoffitElapsedTime,
        'OrderSoffitEstTime': orderSoffitEstTime,
        'BillToID': billToID,
        'BillAddress': billAddress,
        'BillCity': billCity,
        'BillState': billState,
        'BillZip': billZip,
        'ShipToID': shipToID,
        'ShipAddress': shipAddress,
        'ShipCity': shipCity,
        'ShipState': shipState,
        'ShipZip': shipZip,
        'JobID': jobID,
        'JobName': jobName,
        'JobContact': jobContact,
        'JobContactPhone': jobContactPhone,
        'JobAddress': jobAddress,
        'JobCity': jobCity,
        'JobState': jobState,
        'JobZip': jobZip,
        'JobDeliveryNote': jobDeliveryNote,
        'DeliveryLocation': deliveryLocation,
        'OriginatorID': originatorID,
        'OriginatorPhoneNumber': originatorPhoneNumber,
        'TerritoryManagerRefID': territoryManagerRefID,
        'SalesRepID': salesRepID,
        'PricingLevelID': pricingLevelID,
        'TermsRef_ListID': termsRefListID,
        'SubTotal': subTotal,
        'Discount': discount,
        'Freight': freight,
        'SalesTaxRefName': salesTaxRefName,
        'SalesTaxRate': salesTaxRate,
        'SalesTaxTotal': salesTaxTotal,
        'OrderTotal': orderTotal,
        'JobPhone': jobPhone,
        'SentEmailSalesOrder': sentEmailSalesOrder,
        'PrintedSalesOrder': printedSalesOrder,
        'EstimateID': estimateID,
        'OrderStatusID': orderStatusID,
        'SalesTaxCodeRef_ListID': salesTaxCodeRefListID,
        'DiscountRate': discountRate,
        'OrderDeliveryVia': orderDeliveryVia,
        'InternalNote': internalNote,
        'SalesNote': salesNote,
        'OrderStatusTS': orderStatusTS,
        'RequestDate': requestDate,
        'ManualDiscount': manualDiscount,
        'IsNew': isNew,
        'OverrideWeight': overrideWeight,
        'Lock': lock,
        'LockUser': lockUser,
        'OrderProductionDate': orderProductionDate,
        'OverrideAutoDate': overrideAutoDate,
        'CompanySubmitted': companySubmitted,
        'SubmittedBy': submittedBy,
        'SubmittedAt': submittedAt,
        'CompanyImportedTo': companyImportedTo,
        'ImportedBy': importedBy,
        'ImportedAt': importedAt,
        'SubmittedByOrderNumber': submittedByOrderNumber,
        'SubmittedByOrderSONumber': submittedByOrderSONumber,
        'ImportedByOrderNumber': importedByOrderNumber,
        'ImportedByOrderSONumber': importedByOrderSONumber,
        'ImportedByCompleted': importedByCompleted,
        'ExportedPackages': exportedPackages,
        'NoDSReport': noDSReport,
        'ToBeInvoiced': toBeInvoiced,
        'Invoiced': invoiced,
        'SalesTaxCode': salesTaxCode,
        'UnlockAuthorize': unlockAuthorize,
        'RMAProcess': rMAProcess,
        'DisplayAt': displayAt,
        'UnlockAuthorizeTS': unlockAuthorizeTS,
        'OrderTotalNoTax': orderTotalNoTax,
        'AuditHeaderInsert': auditHeaderInsert,
        'WeightEmailSent': weightEmailSent,
        'WeightWhenEmailed': weightWhenEmailed,
        'LengthWhenEmailed': lengthWhenEmailed,
        'OrderTransferTS': orderTransferTS,
        'IsBackOrder': isBackOrder,
        'DropsheetNumber': dropsheetNumber,
        'ORM': orm,
        'TransferDelay': transferDelay,
        'CenterID': centerID,
        'ImportedLabel': importedLabel,
        'PackPath': packPath,
        'CreatedBy': createdBy,
        'CreatedAt': createdAt,
        'OrderUnlocked': orderUnlocked,
        'OrderUnlockedTS': orderUnlockedTS,
        'OrderUnlockedBy': orderUnlockedBy,
        'ToBeInvoicedBy': toBeInvoicedBy,
        'Lat': lat,
        'Lng': lng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewTblOrdersFreeportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CustomerID": 5571,
  "JobDeliveryID": 0,
  "JobDeliveryType": "",
  "OrderType": "",
  "OrderHeader": "False",
  "OrderSubType": "",
  "OrderStatus": "",
  "OrderSortOrder": "",
  "OrderPO": "Zierden",
  "ProductionDate": "10/2/2020 12:00:00 AM",
  "OrderDeliveryTime": "",
  "OrderDeliveryDate": "",
  "OrderDeliveryWt": 277.29998848,
  "OrderCustomerPONo": "",
  "OrderDataEntry": 0,
  "OrderApprovalDate": "",
  "OrderApprovedBy": "",
  "OrderLocked": "False",
  "OrderLockedDate": "",
  "OrderSONumber": "53722-SO",
  "OrderMemo": "",
  "OrderDiscount": 0,
  "OrderDate": "10/1/2020 12:00:00 AM",
  "OrderTaxDescription": "",
  "OrderSlitterStatus": "NA",
  "OrderSlitterDoneDate": "",
  "OrderSlitterElapsedTime": 0,
  "OrderSlitterEstTime": 0,
  "OrderTrimStatus": "NA",
  "OrderTrimDoneDate": "",
  "OrderTrimElapsedTime": 0,
  "OrderTrimEstTime": 0,
  "OrderRollStatus": "NA",
  "OrderRollDoneDate": "",
  "OrderRollElapsedTime": 0,
  "OrderRollEstTime": 0,
  "OrderWrapStatus": "NA",
  "OrderWrapDoneDate": "",
  "OrderWrapElapsedTime": 0,
  "OrderWrapEstTime": 0,
  "OrderLoadStatus": "NA",
  "OrderLoadDoneDate": "",
  "OrderLoadElapsedTime": 0,
  "OrderLoadEstTime": 0,
  "OrderDeliveryStatus": "",
  "OrderDeliveryDoneDate": "",
  "OrderDeliveryElapsedTime": 0,
  "OrderDeliveryEstTime": 0,
  "PackageType": "",
  "Barcode": "",
  "OrderTruckID": 0,
  "OrderLoadSquence": 0,
  "OrderETA": "",
  "OrderOldDeliveryDate": "",
  "OrderDropNumber": "",
  "OrderDriveTime": 0,
  "OrderArriveDate": "",
  "OrderArriveTime": "",
  "OrderNoPanelSkids": 0,
  "OrderNoTrimBoxes": 0,
  "OrderNoBags": 0,
  "OrderDeliveryNote": "",
  "SSMA_TimeStamp": "System.Byte[]",
  "OrderTimeStamp": "",
  "LoadDate": "",
  "LoadNum": "",
  "LoadTimeStamp": "",
  "BackOrderID": 0,
  "DoneTimeStamp": "",
  "OrderPartStatus": "NA",
  "OrderPartDoneDate": "",
  "OrderPartElapsedTime": 0,
  "OrderPartEstTime": 0,
  "OrderSoffitStatus": "NA",
  "OrderSoffitDoneDate": "",
  "OrderSoffitElapsedTime": 0,
  "OrderSoffitEstTime": 0,
  "BillToID": 5571,
  "BillAddress": "Po Box 119",
  "BillCity": "New Munich",
  "BillState": "MN",
  "BillZip": "56356",
  "ShipToID": 5571,
  "ShipAddress": "Po Box 119",
  "ShipCity": "New Munich",
  "ShipState": "MN",
  "ShipZip": "56356",
  "JobID": 0,
  "JobName": "Zierden",
  "JobContact": "",
  "JobContactPhone": "",
  "JobAddress": "",
  "JobCity": "",
  "JobState": "",
  "JobZip": "",
  "JobDeliveryNote": "",
  "DeliveryLocation": 0,
  "OriginatorID": "5280",
  "OriginatorPhoneNumber": "2189456964",
  "TerritoryManagerRefID": "",
  "SalesRepID": "",
  "PricingLevelID": 15,
  "TermsRef_ListID": "80000006-1670944546",
  "SubTotal": 338.2333,
  "Discount": 0,
  "Freight": 0,
  "SalesTaxRefName": "NO TAX",
  "SalesTaxRate": 0,
  "SalesTaxTotal": 0,
  "OrderTotal": 338.2333,
  "JobPhone": "",
  "SentEmailSalesOrder": "True",
  "PrintedSalesOrder": "False",
  "EstimateID": 0,
  "OrderStatusID": 8,
  "SalesTaxCodeRef_ListID": "",
  "DiscountRate": 0,
  "OrderDeliveryVia": 3,
  "InternalNote": "",
  "SalesNote": "",
  "OrderStatusTS": "10/1/2020 1:01:51 PM",
  "RequestDate": "10/5/2020 12:00:00 AM",
  "ManualDiscount": "False",
  "IsNew": "False",
  "OverrideWeight": "False",
  "Lock": "False",
  "LockUser": "",
  "OrderProductionDate": "10/1/2020 1:01:52 PM",
  "OverrideAutoDate": "True",
  "CompanySubmitted": 0,
  "SubmittedBy": "",
  "SubmittedAt": "",
  "CompanyImportedTo": 0,
  "ImportedBy": "",
  "ImportedAt": "",
  "SubmittedByOrderNumber": 0,
  "SubmittedByOrderSONumber": "",
  "ImportedByOrderNumber": 0,
  "ImportedByOrderSONumber": "",
  "ImportedByCompleted": "False",
  "ExportedPackages": "False",
  "NoDSReport": "False",
  "ToBeInvoiced": "False",
  "Invoiced": "False",
  "SalesTaxCode": "",
  "UnlockAuthorize": "False",
  "RMAProcess": "False",
  "DisplayAt": "",
  "UnlockAuthorizeTS": "",
  "OrderTotalNoTax": 338.2333,
  "AuditHeaderInsert": "False",
  "WeightEmailSent": "False",
  "WeightWhenEmailed": 0,
  "LengthWhenEmailed": 0,
  "OrderTransferTS": "",
  "IsBackOrder": "False",
  "DropsheetNumber": "",
  "ORM": "",
  "TransferDelay": "",
  "CenterID": 2,
  "ImportedLabel": "False",
  "PackPath": "",
  "CreatedBy": "",
  "CreatedAt": "",
  "OrderUnlocked": "False",
  "OrderUnlockedTS": "",
  "OrderUnlockedBy": "",
  "ToBeInvoicedBy": "",
  "Lat": 0,
  "Lng": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new TblOrdersFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTblOrdersByIDFreeportCall {
  Future<ApiCallResponse> call({
    int? ordernumber,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get TblOrders by IDFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrders/${ordernumber}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTblOrdersFreeportCall {
  Future<ApiCallResponse> call({
    int? ordernumber,
    bool? unlockauthorize,
    String? unlockauthorizetm = '',
    bool? orderunlocked,
    String? orderunlockedts = '',
    String? orderunlockedby = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "UnlockAuthorize": "${unlockauthorize}",
  "UnlockAuthorizeTS": "${unlockauthorizetm}",
  "OrderUnlocked": "${orderunlocked}",
  "OrderUnlockedTS": "${orderunlockedts}",
  "OrderUnlockedBy": "${orderunlockedby}"
 }''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update TblOrdersFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrders/${ordernumber}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTblOrdersCall {
  Future<ApiCallResponse> call({
    int? ordernumber,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete TblOrders',
      apiUrl: '${baseUrl}/table/dbo.tblOrders/${ordernumber}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListTblUserFreeportCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? userID,
    String? userName = '',
    String? userType = '',
    String? userPassword = '',
    int? groupID,
    String? passwordE = '',
    String? superUser = '',
    int? employeeID,
    String? listId = '',
    String? corporate = '',
    String? requiredUpdate = '',
    int? userTypeID,
    String? pinNumber = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List TblUserFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblUser',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'UserID': userID,
        'UserName': userName,
        'UserType': userType,
        'UserPassword': userPassword,
        'GroupID': groupID,
        'PasswordE': passwordE,
        'SuperUser': superUser,
        'EmployeeID': employeeID,
        'ListId': listId,
        'Corporate': corporate,
        'RequiredUpdate': requiredUpdate,
        'UserTypeID': userTypeID,
        'PinNumber': pinNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewTblUserFreeportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create new TblUserFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblUser',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerateLinkForTblUserPasswordEFreeportCall {
  Future<ApiCallResponse> call({
    int? userid,
    String? format = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Generate link for TblUserPasswordEFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}/link/PasswordE',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {
        'format': format,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTblUserByIDFreeportCall {
  Future<ApiCallResponse> call({
    int? userid,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get TblUser by IDFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTblUserFreeportCall {
  Future<ApiCallResponse> call({
    int? userid,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update TblUserFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTblUserFreeportCall {
  Future<ApiCallResponse> call({
    int? userid,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete TblUserFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblUser/${userid}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListTblOrdersDetailFreeportCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? id,
    int? orderID,
    String? itemRefListID = '',
    String? description = '',
    String? qtyPanels = '',
    String? lengthFeet = '',
    String? lengthInches = '',
    String? lengthTotal = '',
    String? quantity = '',
    String? sizeFeet = '',
    String? sizeInches = '',
    String? sizeTotal = '',
    String? gauge = '',
    String? color = '',
    String? girth = '',
    String? rate = '',
    String? amount = '',
    int? lineItem,
    String? rateOriginal = '',
    String? amountOriginal = '',
    String? percentDisc = '',
    int? connexJobID,
    int? connexBatchID,
    String? weight = '',
    String? pONumberID = '',
    String? pOSelect = '',
    bool? slitDone,
    bool? trimDone,
    bool? wrapDone,
    bool? partsDone,
    bool? rollDone,
    bool? soffitDone,
    int? slitStockQty,
    bool? slitStockDone,
    String? slitStockPrint = '',
    int? trimStockQty,
    bool? trimStockDone,
    String? slitNote = '',
    String? slitStockNote = '',
    String? trimNote = '',
    int? qtyRMA,
    String? inventoryUpdated = '',
    String? trimProducedBy = '',
    String? slitProducedBy = '',
    String? inventoryInvoiced = '',
    String? dripStop = '',
    String? productionDelay = '',
    String? doNotSendToConnex = '',
    bool? slitAssignment,
    String? exportedMarxman = '',
    String? rateBeforeDripStop = '',
    String? editAfterConnex = '',
    String? rowVersion = '',
    String? selectRMA = '',
    int? partialQty,
    String? printStock = '',
    String? pitch = '',
    String? selectSlitDone = '',
    String? adjustedBlank = '',
    String? purchaseCost = '',
    String? margin = '',
    String? discount = '',
    String? coilTagNumber = '',
    String? coilUsed = '',
    String? coilTagUser = '',
    String? coilTagTS = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List TblOrdersDetailFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'ID': id,
        'OrderID': orderID,
        'ItemRef_ListID': itemRefListID,
        'Description': description,
        'QtyPanels': qtyPanels,
        'LengthFeet': lengthFeet,
        'LengthInches': lengthInches,
        'LengthTotal': lengthTotal,
        'Quantity': quantity,
        'SizeFeet': sizeFeet,
        'SizeInches': sizeInches,
        'SizeTotal': sizeTotal,
        'Gauge': gauge,
        'Color': color,
        'Girth': girth,
        'Rate': rate,
        'Amount': amount,
        'LineItem': lineItem,
        'RateOriginal': rateOriginal,
        'AmountOriginal': amountOriginal,
        'PercentDisc': percentDisc,
        'ConnexJobID': connexJobID,
        'ConnexBatchID': connexBatchID,
        'Weight': weight,
        'PONumberID': pONumberID,
        'POSelect': pOSelect,
        'SlitDone': slitDone,
        'TrimDone': trimDone,
        'WrapDone': wrapDone,
        'PartsDone': partsDone,
        'RollDone': rollDone,
        'SoffitDone': soffitDone,
        'SlitStockQty': slitStockQty,
        'SlitStockDone': slitStockDone,
        'SlitStockPrint': slitStockPrint,
        'TrimStockQty': trimStockQty,
        'TrimStockDone': trimStockDone,
        'SlitNote': slitNote,
        'SlitStockNote': slitStockNote,
        'TrimNote': trimNote,
        'QtyRMA': qtyRMA,
        'InventoryUpdated': inventoryUpdated,
        'TrimProducedBy': trimProducedBy,
        'SlitProducedBy': slitProducedBy,
        'InventoryInvoiced': inventoryInvoiced,
        'DripStop': dripStop,
        'ProductionDelay': productionDelay,
        'DoNotSendToConnex': doNotSendToConnex,
        'SlitAssignment': slitAssignment,
        'ExportedMarxman': exportedMarxman,
        'RateBeforeDripStop': rateBeforeDripStop,
        'EditAfterConnex': editAfterConnex,
        'RowVersion': rowVersion,
        'SelectRMA': selectRMA,
        'PartialQty': partialQty,
        'PrintStock': printStock,
        'Pitch': pitch,
        'SelectSlitDone': selectSlitDone,
        'AdjustedBlank': adjustedBlank,
        'PurchaseCost': purchaseCost,
        'Margin': margin,
        'Discount': discount,
        'CoilTagNumber': coilTagNumber,
        'CoilUsed': coilUsed,
        'CoilTagUser': coilTagUser,
        'CoilTagTS': coilTagTS,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewTblOrdersDetailFreeportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "OrderID": 500000001,
  "ItemRef_ListID": "800030B2-1440597056",
  "Description": "Pioneer Rib, 2960",
  "QtyPanels": 16,
  "LengthFeet": "6",
  "LengthInches": "4 3/4",
  "LengthTotal": 6.395833,
  "Quantity": 102.333328,
  "SizeFeet": "",
  "SizeInches": "",
  "SizeTotal": 0,
  "Gauge": "29",
  "Color": "Ash Gray",
  "Girth": 0,
  "Rate": 2.14,
  "Amount": 218.9933,
  "LineItem": 1,
  "RateOriginal": 2.14,
  "AmountOriginal": 218.9933,
  "PercentDisc": 0,
  "ConnexJobID": 0,
  "ConnexBatchID": 0,
  "Weight": 221.03998848,
  "PONumberID": "",
  "POSelect": "False",
  "SlitDone": false,
  "TrimDone": false,
  "WrapDone": false,
  "PartsDone": false,
  "RollDone": false,
  "SoffitDone": false,
  "SlitStockQty": 0,
  "SlitStockDone": true,
  "SlitStockPrint": "False",
  "TrimStockQty": 0,
  "TrimStockDone": true,
  "SlitNote": "",
  "SlitStockNote": "",
  "TrimNote": "",
  "QtyRMA": 0,
  "InventoryUpdated": "False",
  "TrimProducedBy": "",
  "SlitProducedBy": "",
  "InventoryInvoiced": "True",
  "DripStop": "False",
  "ProductionDelay": "False",
  "DoNotSendToConnex": "False",
  "SlitAssignment": false,
  "ExportedMarxman": "False",
  "RateBeforeDripStop": 0,
  "EditAfterConnex": "False",
  "RowVersion": "System.Byte[]",
  "SelectRMA": "False",
  "PartialQty": 0,
  "PrintStock": "False",
  "Pitch": "",
  "SelectSlitDone": "False",
  "AdjustedBlank": 0,
  "PurchaseCost": 2.1371,
  "Margin": 0.0013,
  "Discount": "",
  "CoilTagNumber": "",
  "CoilUsed": 0,
  "CoilTagUser": "",
  "CoilTagTS": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new TblOrdersDetailFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTblOrdersDetailByIDFreeportCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get TblOrdersDetail by IDFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTblOrdersDetailFreeportCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "OrderID": 500000001,
  "ItemRef_ListID": "800030B2-1440597056",
  "Description": "Pioneer Rib, 2960",
  "QtyPanels": 16,
  "LengthFeet": "6",
  "LengthInches": "4 3/4",
  "LengthTotal": 6.395833,
  "Quantity": 102.333328,
  "SizeFeet": "",
  "SizeInches": "",
  "SizeTotal": 0,
  "Gauge": "29",
  "Color": "Ash Gray",
  "Girth": 0,
  "Rate": 2.14,
  "Amount": 218.9933,
  "LineItem": 1,
  "RateOriginal": 2.14,
  "AmountOriginal": 218.9933,
  "PercentDisc": 0,
  "ConnexJobID": 0,
  "ConnexBatchID": 0,
  "Weight": 221.03998848,
  "PONumberID": "",
  "POSelect": "False",
  "SlitDone": false,
  "TrimDone": false,
  "WrapDone": false,
  "PartsDone": false,
  "RollDone": false,
  "SoffitDone": false,
  "SlitStockQty": 0,
  "SlitStockDone": true,
  "SlitStockPrint": "False",
  "TrimStockQty": 0,
  "TrimStockDone": true,
  "SlitNote": "",
  "SlitStockNote": "",
  "TrimNote": "",
  "QtyRMA": 0,
  "InventoryUpdated": "False",
  "TrimProducedBy": "",
  "SlitProducedBy": "",
  "InventoryInvoiced": "True",
  "DripStop": "False",
  "ProductionDelay": "False",
  "DoNotSendToConnex": "False",
  "SlitAssignment": false,
  "ExportedMarxman": "False",
  "RateBeforeDripStop": 0,
  "EditAfterConnex": "False",
  "RowVersion": "System.Byte[]",
  "SelectRMA": "False",
  "PartialQty": 0,
  "PrintStock": "False",
  "Pitch": "",
  "SelectSlitDone": "False",
  "AdjustedBlank": 0,
  "PurchaseCost": 2.1371,
  "Margin": 0.0013,
  "Discount": "",
  "CoilTagNumber": "",
  "CoilUsed": 0,
  "CoilTagUser": "",
  "CoilTagTS": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update TblOrdersDetailFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTblOrdersDetailFreeportCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete TblOrdersDetailFreeport',
      apiUrl: '${baseUrl}/table/dbo.tblOrdersDetail/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListDbovwProductionAltFreeportCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? orderNumber,
    String? orderStatus = '',
    int? orderStatusID,
    String? productionDate = '',
    String? orderCustomerPONo = '',
    String? orderSortOrder = '',
    int? jobID,
    String? orderSONumber = '',
    String? customerName = '',
    String? jobName = '',
    String? orderTaxDescription = '',
    String? orderDiscount = '',
    String? orderSlitterStatus = '',
    int? orderTruckID,
    String? orderMemo = '',
    String? orderTrimStatus = '',
    String? orderRollStatus = '',
    String? orderWrapStatus = '',
    String? orderSubType = '',
    int? orderDeliveryVia,
    String? orderLoadStatus = '',
    String? orderDeliveryStatus = '',
    String? orderPO = '',
    String? orderTimeStamp = '',
    String? orderDeliveryWt = '',
    String? loadNum = '',
    String? loadDate = '',
    int? sortStatus,
    int? oSlit,
    int? oTrim,
    int? oRoll,
    int? oWrap,
    int? oPart,
    int? oSoffit,
    String? prodStatus = '',
    int? rMASort,
    int? closeSort,
    int? productionStarted,
    int? sortDelivery,
    int? backOrderID,
    String? doneTimeStamp = '',
    String? orderPartStatus = '',
    String? orderSoffitStatus = '',
    String? route = '',
    int? routePriority,
    String? orderDropDate = '',
    int? fkOrderID,
    String? shipVia = '',
    String? noDSReport = '',
    String? rMAProcess = '',
    String? percentScanned = '',
    int? productionYear,
    String? scannedTM = '',
    String? unlockAuthorize = '',
    String? unlockAuthorizeTS = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List DbovwProductionAltFreeport',
      apiUrl: '${baseUrl}/view/dbo.vwProductionAlt',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'OrderNumber': orderNumber,
        'OrderStatus': orderStatus,
        'OrderStatusID': orderStatusID,
        'ProductionDate': productionDate,
        'OrderCustomerPONo': orderCustomerPONo,
        'OrderSortOrder': orderSortOrder,
        'JobID': jobID,
        'OrderSONumber': orderSONumber,
        'CustomerName': customerName,
        'JobName': jobName,
        'OrderTaxDescription': orderTaxDescription,
        'OrderDiscount': orderDiscount,
        'OrderSlitterStatus': orderSlitterStatus,
        'OrderTruckID': orderTruckID,
        'OrderMemo': orderMemo,
        'OrderTrimStatus': orderTrimStatus,
        'OrderRollStatus': orderRollStatus,
        'OrderWrapStatus': orderWrapStatus,
        'OrderSubType': orderSubType,
        'OrderDeliveryVia': orderDeliveryVia,
        'OrderLoadStatus': orderLoadStatus,
        'OrderDeliveryStatus': orderDeliveryStatus,
        'OrderPO': orderPO,
        'OrderTimeStamp': orderTimeStamp,
        'OrderDeliveryWt': orderDeliveryWt,
        'LoadNum': loadNum,
        'LoadDate': loadDate,
        'SortStatus': sortStatus,
        'OSlit': oSlit,
        'OTrim': oTrim,
        'ORoll': oRoll,
        'OWrap': oWrap,
        'OPart': oPart,
        'OSoffit': oSoffit,
        'ProdStatus': prodStatus,
        'RMASort': rMASort,
        'CloseSort': closeSort,
        'ProductionStarted': productionStarted,
        'SortDelivery': sortDelivery,
        'BackOrderID': backOrderID,
        'DoneTimeStamp': doneTimeStamp,
        'OrderPartStatus': orderPartStatus,
        'OrderSoffitStatus': orderSoffitStatus,
        'Route': route,
        'RoutePriority': routePriority,
        'OrderDropDate': orderDropDate,
        'fkOrderID': fkOrderID,
        'ShipVia': shipVia,
        'NoDSReport': noDSReport,
        'RMAProcess': rMAProcess,
        'PercentScanned': percentScanned,
        'ProductionYear': productionYear,
        'ScannedTM': scannedTM,
        'UnlockAuthorize': unlockAuthorize,
        'UnlockAuthorizeTS': unlockAuthorizeTS,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListDbovwUnlockOrderAPIFreeportCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? orderNumber,
    String? orderStatus = '',
    int? orderStatusID,
    String? productionDate = '',
    String? orderSONumber = '',
    String? customerName = '',
    String? jobName = '',
    String? orderSlitterStatus = '',
    String? orderTrimStatus = '',
    String? orderRollStatus = '',
    String? orderWrapStatus = '',
    String? orderSoffitStatus = '',
    String? orderPartStatus = '',
    String? orderPO = '',
    String? orderTimeStamp = '',
    String? orderDeliveryWt = '',
    String? unlockAuthorize = '',
    String? unlockAuthorizeTS = '',
    String? orderDate = '',
    String? orderUnlockedBy = '',
    String? orderUnlocked = '',
    String? lockReason = '',
  }) async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List DbovwUnlockOrderAPIFreeport',
      apiUrl: '${baseUrl}/view/dbo.vwUnlockOrderAPI',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'OrderNumber': orderNumber,
        'OrderStatus': orderStatus,
        'OrderStatusID': orderStatusID,
        'ProductionDate': productionDate,
        'OrderSONumber': orderSONumber,
        'CustomerName': customerName,
        'JobName': jobName,
        'OrderSlitterStatus': orderSlitterStatus,
        'OrderTrimStatus': orderTrimStatus,
        'OrderRollStatus': orderRollStatus,
        'OrderWrapStatus': orderWrapStatus,
        'OrderSoffitStatus': orderSoffitStatus,
        'OrderPartStatus': orderPartStatus,
        'OrderPO': orderPO,
        'OrderTimeStamp': orderTimeStamp,
        'OrderDeliveryWt': orderDeliveryWt,
        'UnlockAuthorize': unlockAuthorize,
        'UnlockAuthorizeTS': unlockAuthorizeTS,
        'OrderDate': orderDate,
        'OrderUnlockedBy': orderUnlockedBy,
        'OrderUnlocked': orderUnlocked,
        'LockReason': lockReason,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CallDbouspupdateEncryptedPasswordProcedureFreeportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "@passphrase": "string",
  "@password": "string",
  "@UserID": 123
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Call dbouspupdateEncryptedPassword procedureFreeport',
      apiUrl: '${baseUrl}/sp/dbo.usp_updateencryptedpassword',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CallDbofnUserTableFunctionFreeportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UnlockOrdersFreeportApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "@UserID": 123,
  "@PassPhrase": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Call dbofnUserTable functionFreeport',
      apiUrl: '${baseUrl}/udf/dbo.fnusertable',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer ZmNjZDcwZmJlNmUwZDA3NDE5ZTg3YTg3YWIzMTNiMmY6NTc4ZDZjZmViMWNmOWU0Y2VkNDY5ODkxZTk1Y2VkNmE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Unlock Orders Freeport ApiFlow API Group Code

/// Start Unlock Orders Group Code

class UnlockOrdersGroup {
  static String getBaseUrl({
    String? db,
  }) {
    db ??= FFAppConstants.cantonDb;
    return 'https://dst-customer-portal-bfe4c7fdc773.herokuapp.com/api/unlock-orders';
  }

  static Map<String, String> headers = {};
  static ViewOrdersForUnlockCall viewOrdersForUnlockCall =
      ViewOrdersForUnlockCall();
  static ViewOrdersForUnlockFreeportCall viewOrdersForUnlockFreeportCall =
      ViewOrdersForUnlockFreeportCall();
  static LoginUserCall loginUserCall = LoginUserCall();
  static UpdateUnlockOrderCall updateUnlockOrderCall = UpdateUnlockOrderCall();
  static UpdateUnlockOrderFreeportCall updateUnlockOrderFreeportCall =
      UpdateUnlockOrderFreeportCall();
  static UpdatePinNumberCall updatePinNumberCall = UpdatePinNumberCall();
}

class ViewOrdersForUnlockCall {
  Future<ApiCallResponse> call({
    String? orderSoNumber = '%',
    int? limit = 5,
    int? offset = 0,
    String? db,
  }) async {
    db ??= FFAppConstants.cantonDb;
    final baseUrl = UnlockOrdersGroup.getBaseUrl(
      db: db,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'View Orders for Unlock',
      apiUrl: '${baseUrl}/select-unlock-orders',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order_so_number': orderSoNumber,
        'limit': limit,
        'offset': offset,
        'db': db,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ViewOrdersForUnlockFreeportCall {
  Future<ApiCallResponse> call({
    String? orderSoNumber = '%',
    int? limit = 5,
    int? offset = 0,
    String? db,
  }) async {
    db ??= FFAppConstants.cantonDb;
    final baseUrl = UnlockOrdersGroup.getBaseUrl(
      db: db,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'View Orders for Unlock Freeport',
      apiUrl: '${baseUrl}/select-unlock-orders-freeport',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order_so_number': orderSoNumber,
        'limit': limit,
        'offset': offset,
        'db': db,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginUserCall {
  Future<ApiCallResponse> call({
    String? pinNumber = '',
    String? username = '',
    String? db,
  }) async {
    db ??= FFAppConstants.cantonDb;
    final baseUrl = UnlockOrdersGroup.getBaseUrl(
      db: db,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Login User',
      apiUrl: '${baseUrl}/validate-user',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'username': username,
        'pin_number': pinNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUnlockOrderCall {
  Future<ApiCallResponse> call({
    int? orderNumber,
    bool? unlockAuthorize,
    String? unlockAuthorizeTS = '',
    bool? orderUnlocked,
    String? orderUnlockedTS = '',
    String? orderUnlockedBy = '',
    String? db,
  }) async {
    db ??= FFAppConstants.cantonDb;
    final baseUrl = UnlockOrdersGroup.getBaseUrl(
      db: db,
    );

    final ffApiRequestBody = '''
{
  "OrderNumber": ${orderNumber},
  "UnlockAuthorize": ${unlockAuthorize},
  "UnlockAuthorizeTS": "${escapeStringForJson(unlockAuthorizeTS)}",
  "OrderUnlocked": ${orderUnlocked},
  "OrderUnlockedTS": "${escapeStringForJson(orderUnlockedTS)}",
  "OrderUnlockedBy": "${escapeStringForJson(orderUnlockedBy)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Unlock Order',
      apiUrl: '${baseUrl}/update-unlock-order',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUnlockOrderFreeportCall {
  Future<ApiCallResponse> call({
    int? orderNumber,
    bool? unlockAuthorize,
    String? unlockAuthorizeTS = '',
    bool? orderUnlocked,
    String? orderUnlockedTS = '',
    String? orderUnlockedBy = '',
    String? db,
  }) async {
    db ??= FFAppConstants.cantonDb;
    final baseUrl = UnlockOrdersGroup.getBaseUrl(
      db: db,
    );

    final ffApiRequestBody = '''
{
  "OrderNumber": ${orderNumber},
  "UnlockAuthorize": ${unlockAuthorize},
  "UnlockAuthorizeTS": "${escapeStringForJson(unlockAuthorizeTS)}",
  "OrderUnlocked": ${orderUnlocked},
  "OrderUnlockedTS": "${escapeStringForJson(orderUnlockedTS)}",
  "OrderUnlockedBy": "${escapeStringForJson(orderUnlockedBy)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Unlock Order Freeport',
      apiUrl: '${baseUrl}/update-unlock-order-freeport',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePinNumberCall {
  Future<ApiCallResponse> call({
    int? userid,
    String? pinNumber = '',
    String? db,
  }) async {
    db ??= FFAppConstants.cantonDb;
    final baseUrl = UnlockOrdersGroup.getBaseUrl(
      db: db,
    );

    final ffApiRequestBody = '''
{
  "UserID": ${userid},
  "PinNumber": "${escapeStringForJson(pinNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Pin Number',
      apiUrl: '${baseUrl}/update-pin-number',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Unlock Orders Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
