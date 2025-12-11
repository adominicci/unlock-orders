import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'unlock_orders_widget.dart' show UnlockOrdersWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class UnlockOrdersModel extends FlutterFlowModel<UnlockOrdersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for searchCantonTextField widget.
  FocusNode? searchCantonTextFieldFocusNode;
  TextEditingController? searchCantonTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchCantonTextFieldTextControllerValidator;
  // State field(s) for ordersListViewCanton widget.

  PagingController<ApiPagingParams, dynamic>?
      ordersListViewCantonPagingController;
  Function(ApiPagingParams nextPageMarker)? ordersListViewCantonApiCall;

  // Stores action output result for [Backend Call - API (Update Unlock Order)] action in lockIcon widget.
  ApiCallResponse? apiUnlockStatus;
  // State field(s) for searchFreeportTextField widget.
  FocusNode? searchFreeportTextFieldFocusNode;
  TextEditingController? searchFreeportTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchFreeportTextFieldTextControllerValidator;
  // State field(s) for ordersListViewFreeport widget.

  PagingController<ApiPagingParams, dynamic>?
      ordersListViewFreeportPagingController;
  Function(ApiPagingParams nextPageMarker)? ordersListViewFreeportApiCall;

  // Stores action output result for [Backend Call - API (Update Unlock Order Freeport)] action in lockIconFreeport widget.
  ApiCallResponse? apiUnlockStatusFreeport;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    searchCantonTextFieldFocusNode?.dispose();
    searchCantonTextFieldTextController?.dispose();

    ordersListViewCantonPagingController?.dispose();
    searchFreeportTextFieldFocusNode?.dispose();
    searchFreeportTextFieldTextController?.dispose();

    ordersListViewFreeportPagingController?.dispose();
  }

  /// Additional helper methods.
  Future waitForOnePageForOrdersListViewCanton({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (ordersListViewCantonPagingController?.nextPageKey?.nextPageNumber ??
                  0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForOnePageForOrdersListViewFreeport({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = (ordersListViewFreeportPagingController
                  ?.nextPageKey?.nextPageNumber ??
              0) >
          0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<ApiPagingParams, dynamic> setOrdersListViewCantonController(
    Function(ApiPagingParams) apiCall,
  ) {
    ordersListViewCantonApiCall = apiCall;
    return ordersListViewCantonPagingController ??=
        _createOrdersListViewCantonController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic>
      _createOrdersListViewCantonController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(ordersListViewCantonViewOrdersForUnlockPage);
  }

  void ordersListViewCantonViewOrdersForUnlockPage(
          ApiPagingParams nextPageMarker) =>
      ordersListViewCantonApiCall!(nextPageMarker)
          .then((ordersListViewCantonViewOrdersForUnlockResponse) {
        final pageItems = ((ordersListViewCantonViewOrdersForUnlockResponse
                        .jsonBody
                        .toList()
                        .map<OrdersInProductionStruct?>(
                            OrdersInProductionStruct.maybeFromMap)
                        .toList() as Iterable<OrdersInProductionStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        ordersListViewCantonPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: ordersListViewCantonViewOrdersForUnlockResponse,
                )
              : null,
        );
      });

  PagingController<ApiPagingParams, dynamic>
      setOrdersListViewFreeportController(
    Function(ApiPagingParams) apiCall,
  ) {
    ordersListViewFreeportApiCall = apiCall;
    return ordersListViewFreeportPagingController ??=
        _createOrdersListViewFreeportController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic>
      _createOrdersListViewFreeportController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(
          ordersListViewFreeportViewOrdersForUnlockFreeportPage);
  }

  void ordersListViewFreeportViewOrdersForUnlockFreeportPage(
          ApiPagingParams nextPageMarker) =>
      ordersListViewFreeportApiCall!(nextPageMarker)
          .then((ordersListViewFreeportViewOrdersForUnlockFreeportResponse) {
        final pageItems =
            ((ordersListViewFreeportViewOrdersForUnlockFreeportResponse.jsonBody
                            .toList()
                            .map<OrdersInProductionStruct?>(
                                OrdersInProductionStruct.maybeFromMap)
                            .toList() as Iterable<OrdersInProductionStruct?>)
                        .withoutNulls ??
                    [])
                .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        ordersListViewFreeportPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse:
                      ordersListViewFreeportViewOrdersForUnlockFreeportResponse,
                )
              : null,
        );
      });
}
