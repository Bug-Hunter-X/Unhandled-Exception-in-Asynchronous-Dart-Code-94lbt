```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomApiException implements Exception {
  final String message;
  CustomApiException(this.message);
  @override
  String toString() => message;
}

Future<Map<String, dynamic>> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw CustomApiException('API request failed with status: ${response.statusCode}');
    }
  } on CustomApiException catch (e) {
    print('Custom API Error: $e');
    rethrow; // Or handle differently
  } on FormatException catch (e) {
    print('JSON parsing error: $e');
    rethrow; // Or handle differently
  } on SocketException catch (e) {
    print('Network error: $e');
    rethrow; // Or handle differently
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; // Or handle differently
  }
}
```