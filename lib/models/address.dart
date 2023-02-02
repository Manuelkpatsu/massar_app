import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final int id;
  final String name;

  const Address({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
