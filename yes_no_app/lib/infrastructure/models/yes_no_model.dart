import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final String imageUrl;
  final bool forced;

  YesNoModel({
    required this.answer,
    required this.imageUrl,
    required this.forced,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
    answer: json['answer'],
    imageUrl: json['image'],
    forced: json['forced'],
  );

  Message toMessageEntity() => Message(
    text: answer == 'yes' ? 'Sí' : 'No',
    imageUrl: imageUrl,
    fromWho: FromWho.hers,
  );
}
