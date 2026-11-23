import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/dio_service.dart';

// 1) Dependency injection: one place that creates DioService.
// Anyone who needs it asks Riverpod instead of writing DioService().
final dioServiceProvider = Provider<DioService>((ref) => DioService());

// 2) Data manager: loads the products using the service above.
// Riverpod keeps the result and the loading/error state for us.
final productsProvider = FutureProvider<List<dynamic>>((ref) async {
  final dio = ref.watch(dioServiceProvider);
  final response = await dio.get('https://dummyjson.com/products', 10);
  return response['products'] as List<dynamic>;
});
