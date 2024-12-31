```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else if (response.statusCode == 404) {
      throw Exception('Data not found (404)');
    } else if (response.statusCode == 500) {
      throw Exception('Server error (500)');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
    // Handle network issues specifically
  } on FormatException catch (e) {
    print('JSON format error: $e');
    // Handle JSON parsing errors
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle other exceptions
  }
}
```