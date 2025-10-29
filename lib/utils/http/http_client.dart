import 'dart:convert';
import 'package:http/http.dart' as http;

class AHttpHelper {

  static const String _baseUrl = 'https://your-api-base-url.com';

  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // Helper method to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    try {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        // Successful response
        if (response.body.isEmpty) {
          return {'success': true, 'message': 'Operation completed successfully'};
        }
        return json.decode(response.body);
      } else {
        // Error response
        final errorResponse = {
          'success': false,
          'error': 'HTTP ${response.statusCode}',
          'message': _getErrorMessage(response.statusCode),
          'statusCode': response.statusCode,
        };

        return errorResponse;
      }
    } catch (e) {
      // Network or parsing error
      return {
        'success': false,
        'error': 'Network Error',
        'message': 'Failed to connect to server: $e',
      };
    }
  }

  // Get user-friendly error messages
  static String _getErrorMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad Request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'Not Found';
      case 500:
        return 'Internal Server Error';
      case 502:
        return 'Bad Gateway';
      case 503:
        return 'Service Unavailable';
      default:
        return 'Unknown Error ($statusCode)';
    }
  }
}