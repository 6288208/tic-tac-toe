import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    //In address select the ip address of the computer that run the codes.
    socket = IO.io('http://192.168.1.47:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}
