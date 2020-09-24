import 'package:http/http.dart';
import 'package:http_interceptor/http_client_with_interceptor.dart';
import 'package:teste_salcisne/http/interceptors/logging_interceptor.dart';

final Client client = HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()],);

final String baseUrl = 'http://192.168.0.102:8080';
