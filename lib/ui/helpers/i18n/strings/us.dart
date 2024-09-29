import './translation.dart';

class Us implements Translation {
  @override
  String get expiredToken => "Token expirado, deseja fazer o refresh?";
  @override
  String get login => 'Login';
  @override
  String get success => "Sucesso";
  @override
  String get tokenUpdated => "Token atualizado com sucesso";
  @override
  String get unexpected => 'Erro inexperado';
}
