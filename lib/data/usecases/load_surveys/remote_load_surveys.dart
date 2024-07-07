import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';

import '../../models/models.dart';
import '../../http/http.dart';

class RemoteLoadSurveys implements LoadSurveys {
  final String url;
  final HttpClient<List<Map>> httpClient;

  RemoteLoadSurveys({
    required this.url,
    required this.httpClient,
  });

  Future<List<SurveyEntity>> load() async {
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');
      return httpResponse.map((json) => RemoteSurveyModel.fromJson(json).toEntity()).toList();
    } on HttpError catch (error) {
      throw error == HttpError.forbbiden ? DomainError.accessDenied : DomainError.unexpected;
    }
  }
}
