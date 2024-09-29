import 'package:supabase_flutter/supabase_flutter.dart';

SupabaseClient makeSupabaseClient() {
  return Supabase.instance.client;
}
