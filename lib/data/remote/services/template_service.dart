import 'package:dio/dio.dart';
import 'package:mt_template/data/remote/models/template_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part '../../../_generated/data/remote/services/template_service.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class TemplateService {
  factory TemplateService(Dio dio, {String baseUrl}) = _TemplateService;

  @GET("/example")
  Future<TemplateResponse> exampleRequest();
}
