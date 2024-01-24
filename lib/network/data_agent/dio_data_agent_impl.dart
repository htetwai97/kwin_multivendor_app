import 'package:dio/dio.dart';
import 'package:kwin_multivendor_app/network/data_agent/dio_data_agent.dart';
import 'package:kwin_multivendor_app/network/response/get_medicine_list_response.dart';
import 'package:kwin_multivendor_app/network/response/get_treatment_list_response.dart';
import 'package:kwin_multivendor_app/network/service/api_constants.dart';
import 'package:kwin_multivendor_app/network/service/api_service.dart';

class DioDataAgentImpl extends DioDataAgent {
  DioDataAgentImpl._internal();
  static final DioDataAgentImpl _singleton = DioDataAgentImpl._internal();
  factory DioDataAgentImpl() => _singleton;

  @override
  Future<GetTreatmentListResponse> getTreatmentList() async {
    var dio = DioUtil.getDio(null);
    try {
      final response = await dio.get("$BASE_URL/$END_POINT_TREATMENT_LIST");
      if (response.statusCode == 200) {
        return GetTreatmentListResponse.fromJson(response.data);
      }
      throw Exception('Failed to load response');
    } on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<GetMedicineListResponse> getMedicineList() async {
    var dio = DioUtil.getDio(null);
    try {
      final response = await dio.get("$BASE_URL/$END_POINT_MEDICINE_LIST");
      if (response.statusCode == 200) {
        return GetMedicineListResponse.fromJson(response.data);
      }
      throw Exception('Failed to load response');
    } on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
