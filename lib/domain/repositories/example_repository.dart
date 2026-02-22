import 'package:mt_template/data/remote/models/template_response.dart';
import 'package:mt_template/data/remote/services/template_service.dart';

class ExampleRepository {
  final TemplateService _service;

  ExampleRepository(this._service);

  Future<TemplateResponse> getExample() async {
    return _service.exampleRequest();
  }
}
