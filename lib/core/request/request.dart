import 'package:qiao/core/base/exception.dart';
import 'package:qiao/core/base/exception_handler.dart';

import '../utils/loading.dart';

Future request(
  Function() block, {
  bool showLoading = true,
  bool Function(ApiException)? onError,
}) async {
  try {
    await loading(block, isShowLoading: showLoading);
  } catch (e) {
    handleException(ApiException.from(e), onError: onError);
  }
  return;
}
