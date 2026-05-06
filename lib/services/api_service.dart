import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:quiz02/models/movie_model.dart';

class ApiService {
  static const String baseUrl = 'https://api.example.com';

  // Получить список фильмов
  static Future<List<Movie>> getMovies() async {
    try {
      // Mock data for demo (replace with real API call)
      final mockMovies = [
        Movie(
          id: '1',
          title: 'Avengers: Endgame',
          description:
              'After the devastating events, the Avengers assemble once more.',
          imageUrl: 'assets/image.png',
          rating: 8.0,
          castNames: ['Robert Downey Jr.', 'Chris Evans', 'Mark Ruffalo'],
          castImages: ['', '', ''],
        ),
        Movie(
          id: '2',
          title: 'The Infinity Saga',
          description: 'The epic saga of heroes defending Earth.',
          imageUrl: 'assets/image.png',
          rating: 8.5,
          castNames: [
            'Tom Hiddleston',
            'Benedict Cumberbatch',
            'Elizabeth Olsen',
          ],
          castImages: ['', '', ''],
        ),
      ];
      return mockMovies;
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }

  // Получить деталь фильма по ID
  static Future<Movie> getMovieDetail(String id) async {
    try {
      final movies = await getMovies();
      return movies.firstWhere((movie) => movie.id == id);
    } catch (e) {
      throw Exception('Failed to load movie detail: $e');
    }
  }

  // Реальный вызов API (когда готов backend)
  static Future<List<Movie>> fetchMoviesFromApi() async {
    try {
      final response = await http
          .get(Uri.parse('$baseUrl/movies'))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((item) => Movie.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('API Error: $e');
    }
  }
}
