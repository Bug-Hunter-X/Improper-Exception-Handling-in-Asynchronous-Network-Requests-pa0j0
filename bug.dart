```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error appropriately
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors
    print('Error: $e');
    // Additional error handling logic
    rethrow; // Re-throw the exception to allow higher-level handling
  }
}
```