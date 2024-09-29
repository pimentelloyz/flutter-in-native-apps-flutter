abstract class SupabaseDbClient {
  Future<void> delete({
    required String tableName,
    required String id,
  });
  Future<List<dynamic>> getAll({
    String? child,
    required String tableName,
    String? field,
    String? param,
  });
  Future<dynamic> getBy({
    required String tableName,
    required String field,
    required String param,
    String? child,
  });
  Future<dynamic> insert({
    required String tableName,
    required dynamic item,
    String? child,
  });

  Future<dynamic> update({
    required String tableName,
    required dynamic item,
    required String field,
    required String param,
  });
}
