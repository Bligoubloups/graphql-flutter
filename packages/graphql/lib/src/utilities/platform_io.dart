import 'dart:io';

import 'package:graphql/src/links/websocket_link/websocket_client.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final isHtml = false;
final isIo = true;

Future<WebSocketChannel> defaultConnectPlatform(
  Uri uri,
  Iterable<String>? protocols,
) async {
  final sock = await WebSocket.connect(uri.toString(), protocols: protocols);
  return IOWebSocketChannel(sock).forGraphQL();
}
