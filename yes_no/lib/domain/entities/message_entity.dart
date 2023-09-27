enum FromWho { me, him }

class Message {
  final String message;
  final FromWho fromWho;
  final String? imageUrl;

  Message({
    required this.message,
    required this.fromWho,
    this.imageUrl,
  });
}
