import 'package:flutter/foundation.dart';

class HomeBloc extends ChangeNotifier {
  /// Bloc state
  bool isDisposed = false;

  /// Dependencies

  /// Loading State
  bool isLoading = false;

  /// Screen states
  int? viewGroupValue = 1;

  void onChangeView(int? viewGroupValue) {
    this.viewGroupValue = viewGroupValue;
    _notifySafely();
  }

  /// loading situations
  void _showLoading() {
    isLoading = true;
    _notifySafely();
  }

  void _hideLoading() {
    isLoading = false;
    _notifySafely();
  }

  void _notifySafely() {
    if (!isDisposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    isDisposed = true;
  }
}
