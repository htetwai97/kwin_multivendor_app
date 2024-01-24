import 'package:kwin_multivendor_app/data/repository/repository.dart';
import 'package:kwin_multivendor_app/network/data_agent/dio_data_agent_impl.dart';
import 'package:kwin_multivendor_app/network/response/get_medicine_list_response.dart';
import 'package:kwin_multivendor_app/network/response/get_treatment_list_response.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl._internal();
  static final RepositoryImpl _singleton = RepositoryImpl._internal();
  factory RepositoryImpl() => _singleton;
  final _dataAgent = DioDataAgentImpl();

  @override
  Future<GetMedicineListResponse> getMedicineList() {
    return _dataAgent.getMedicineList();
  }

  @override
  Future<GetTreatmentListResponse> getTreatmentList() {
    return _dataAgent.getTreatmentList();
  }
}
