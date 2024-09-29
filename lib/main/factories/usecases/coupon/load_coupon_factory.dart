import 'package:ai_que_fome_flutter/data/usecases/coupon/remote_load_coupon.dart';
import 'package:ai_que_fome_flutter/domain/usecases/coupon/load_coupon.dart';

import '../../supabase/supabase.dart';

LoadCoupon makeRemoteLoadCoupon() => RemoteLoadCoupon(
      httpClient: makeSupabaseDbClient(),
    );
