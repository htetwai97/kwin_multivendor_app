// import 'package:flutter/foundation.dart';
// import 'package:kwin_multivendor_app/data/repository/repository.dart';
// import 'package:kwin_multivendor_app/data/repository/repository_impl.dart';
// import 'package:kwin_multivendor_app/network/response/get_medicine_list_response.dart';
// import 'package:kwin_multivendor_app/network/response/get_treatment_list_response.dart';
//
// class ProductsRetailBloc extends ChangeNotifier {
//   /// Bloc state
//   bool isDisposed = false;
//
//   /// Dependencies
//   final Repository _repository = RepositoryImpl();
//
//   /// Loading State
//   bool isLoading = false;
//
//   /// Screen states
//   List<TreatmentVO>? treatments;
//   List<MedicineVO>? medicines;
//   int selectedIndex = 0;
//
//   ProductsRetailBloc() {
//     _showLoading();
//     _repository.getMedicineList().then((response) {
//       medicines = response.medicineList;
//       _notifySafely();
//       _repository.getTreatmentList().then((response) {
//         treatments = response.treatmentList;
//         _notifySafely();
//         _hideLoading();
//       }).onError((error, stackTrace) {
//         _hideLoading();
//         debugPrint(
//             "Error is ===>${error.toString()}\nStackTrack is ===>${stackTrace.toString()}");
//       });
//     }).onError((error, stackTrace) {
//       _hideLoading();
//       debugPrint(
//           "Error is ===>${error.toString()}\nStackTrack is ===>${stackTrace.toString()}");
//     });
//   }
//
//   void onTapChip(int index) {
//     selectedIndex = index;
//     _notifySafely();
//   }
//
//   /// loading situations
//   void _showLoading() {
//     isLoading = true;
//     _notifySafely();
//   }
//
//   void _hideLoading() {
//     isLoading = false;
//     _notifySafely();
//   }
//
//   void _notifySafely() {
//     if (!isDisposed) {
//       notifyListeners();
//     }
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     isDisposed = true;
//   }
// }
