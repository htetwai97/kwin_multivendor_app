import 'package:kwin_multivendor_app/network/response/get_medicine_list_response.dart';
import 'package:kwin_multivendor_app/network/response/get_treatment_list_response.dart';

abstract class Repository {
  Future<GetTreatmentListResponse> getTreatmentList();
  Future<GetMedicineListResponse> getMedicineList();
}
