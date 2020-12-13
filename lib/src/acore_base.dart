import 'package:teflink_console/console.dart';
import 'package:teflink_http/http.dart';

class ServerApp extends Server {
  ServerApp({int port, this.application}) : super(port: port);

  Application application;

  @override
  void entryPoint() {
    addRoute({'method': 'GET', 'route': '/v1/ruta'});
    addRoute({'method': 'GET', 'route': 'demo'});
    super.entryPoint();
  }
}
