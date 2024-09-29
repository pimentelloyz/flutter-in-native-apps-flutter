import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseInitializer {
  Future<void> init() async {
    await Supabase.initialize(
      url: 'https://pcjrecnxbcfjvyijenov.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBjanJlY254YmNmanZ5aWplbm92Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc1NzA3MDYsImV4cCI6MjA0MzE0NjcwNn0.c4hQH1Pn5hQO6rEg3TyXpuQZsvoPJm9xRUCwHa9qR6g',
    );
  }
}
