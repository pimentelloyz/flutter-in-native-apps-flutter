import 'package:ai_que_fome_flutter/data/http/http_error.dart';
import 'package:ai_que_fome_flutter/data/models/coupon/remote_coupon_model.dart';
import 'package:ai_que_fome_flutter/data/supabase/supabase_client.dart';
import 'package:ai_que_fome_flutter/domain/entities/coupon/coupon_entity.dart';
import 'package:ai_que_fome_flutter/domain/helpers/domain_error.dart';
import 'package:ai_que_fome_flutter/domain/usecases/coupon/load_coupon.dart';

class RemoteLoadCoupon implements LoadCoupon {
  final SupabaseDbClient httpClient;

  RemoteLoadCoupon({
    required this.httpClient,
  });

  @override
  Future<List<CouponEntity>> load() async {
    try {
      final httpResponse = await httpClient.getAll(
        tableName: 'coupon',
      );
      return httpResponse
          .map<CouponEntity>(
              (json) => RemoteCouponModel.fromJson(json).toEntity())
          .toList();
    } on HttpError catch (error) {
      throw error == HttpError.unauthorized
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
