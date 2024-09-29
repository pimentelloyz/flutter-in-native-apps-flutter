import 'dart:developer' as developer;

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/supabase/supabase_client.dart';

class SupabaseAdapter implements SupabaseDbClient {
  final SupabaseClient client;

  SupabaseAdapter({
    required this.client,
  });

  @override
  Future<void> delete({
    required String tableName,
    required String id,
  }) async {
    return await client.from(tableName).delete().eq('id', id);
  }

  @override
  Future<List<dynamic>> getAll({
    String? child,
    required String tableName,
    String? field,
    String? param,
  }) async {
    dynamic response;

    if (child == null && field != null && param != null) {
      response = await client.from(tableName).select().not(field, 'in', param);
    } else if (field != null && param != null) {
      response = await client
          .from(tableName)
          .select('*, $child')
          .not(field, 'in', param);
    } else if (child != null) {
      response = await client.from(tableName).select('*, $child');
    } else {
      response = await client.from(tableName).select();
    }
    developer.log(
        '===============================================================================');
    developer.log('START - GETBY');
    developer.log(response.toString());
    developer.log('START - GETBY');
    developer.log(
        '===============================================================================');
    return response;
  }

  @override
  Future<dynamic> getBy({
    required String tableName,
    required String field,
    required String param,
    String? child,
  }) async {
    dynamic response;

    if (child == null) {
      response =
          await client.from(tableName).select().eq(field, param).single();
    } else {
      response = await client
          .from(tableName)
          .select('*, $child')
          .eq(field, param)
          .single();
    }
    developer.log(
        '===============================================================================');
    developer.log('START - GETBY');
    developer.log(response.toString());
    developer.log('START - GETBY');
    developer.log(
        '===============================================================================');
    return response;
  }

  @override
  Future<dynamic> insert(
      {required String tableName, required dynamic item, String? child}) async {
    dynamic response;

    if (child != null) {
      response = await client
          .from(tableName)
          .insert(item)
          .select('*, $child')
          .single();
    } else {
      response = await client.from(tableName).insert(item).select().single();
    }
    developer.log(
        '===============================================================================');
    developer.log('START - INSERT');
    developer.log('START - INSERT');
    developer.log(
        '===============================================================================');

    return response;
  }

  @override
  Future<dynamic> update({
    required String tableName,
    required dynamic item,
    required String field,
    required String param,
  }) async {
    final data = await client.from(tableName).update(item).eq(field, param);
    return data;
  }
}
