import '../../../data/supabase/supabase_client.dart';
import '../../../infra/supabase/supabase_adapter.dart';
import 'supabase_client_factory.dart';

SupabaseDbClient makeSupabaseDbClient() =>
    SupabaseAdapter(client: makeSupabaseClient());
