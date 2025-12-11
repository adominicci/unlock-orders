import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  // State field(s) for ordersListView widget.

  PagingController<ApiPagingParams, dynamic>? ordersListViewPagingController;
  Function(ApiPagingParams nextPageMarker)? ordersListViewApiCall;

  // Stores action output result for [Backend Call - API (Update TblOrders)] action in lockIcon widget.
  ApiCallResponse? apiUnlockStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTextFieldFocusNode?.dispose();
    searchTextFieldTextController?.dispose();

    ordersListViewPagingController?.dispose();
  }

  /// Additional helper methods.
  Future waitForOnePageForOrdersListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (ordersListViewPagingController?.nextPageKey?.nextPageNumber ?? 0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<ApiPagingParams, dynamic> setOrdersListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    ordersListViewApiCall = apiCall;
    return ordersListViewPagingController ??=
        _createOrdersListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createOrdersListViewController(
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
      ..addPageRequestListener(ordersListViewViewOrdersForUnlockPage);
  }

  void ordersListViewViewOrdersForUnlockPage(ApiPagingParams nextPageMarker) =>
      ordersListViewApiCall!(nextPageMarker)
          .then((ordersListViewViewOrdersForUnlockResponse) {
        final pageItems = ((ordersListViewViewOrdersForUnlockResponse.jsonBody
                        .toList()
                        .map<OrdersInProductionStruct?>(
                            OrdersInProductionStruct.maybeFromMap)
                        .toList() as Iterable<OrdersInProductionStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        ordersListViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: ordersListViewViewOrdersForUnlockResponse,
                )
              : null,
        );
      });
}
