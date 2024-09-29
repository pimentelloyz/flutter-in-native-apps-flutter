import 'package:ai_que_fome_flutter/data/http/http_error.dart';
import 'package:ai_que_fome_flutter/domain/entities/coupon/coupon_entity.dart';

class RemoteCouponModel {
  final int id;
  final String? coupon;
  final String? description;
  final String? maturity;

  RemoteCouponModel({
    required this.id,
    required this.coupon,
    required this.description,
    required this.maturity,
  });

  factory RemoteCouponModel.fromEntity(CouponEntity entity) =>
      RemoteCouponModel(
          id: entity.id,
          coupon: entity.coupon,
          description: entity.description,
          maturity: entity.maturity);

  factory RemoteCouponModel.fromJson(Map json) {
    if (!json.containsKey('id')) {
      throw HttpError.invalidData;
    }
    return RemoteCouponModel(
      id: json['id'],
      coupon: json['coupon'],
      description: json['description'],
      maturity: json['maturity'],
    );
  }

  CouponEntity toEntity() => CouponEntity(
        id: id,
        coupon: coupon,
        description: description,
        maturity: maturity,
      );
}
