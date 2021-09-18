import 'package:web_socket_channel/web_socket_channel.dart';

final isHtml = false;
final isIo = false;

late final Future<WebSocketChannel> Function(
  Uri uri,
  Iterable<String>? protocols,
) defaultConnectPlatform;
