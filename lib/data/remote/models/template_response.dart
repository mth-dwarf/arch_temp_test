import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/presentation/utils/json_utils.dart';

part '../../../_generated/data/remote/models/template_response.g.dart';

@JsonSerializable()
final class TemplateResponse {
  final String id;
  final int exampleInt;

  const TemplateResponse(this.id, this.exampleInt);

  factory TemplateResponse.fromJson(Json json) => _$TemplateResponseFromJson(json);

  Json toJson() => _$TemplateResponseToJson(this);
}
