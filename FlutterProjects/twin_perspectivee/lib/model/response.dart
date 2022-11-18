class ApiResponse {
  final String firstPerspective;
  final String secondPerspective;
  final String query;

  ApiResponse({required this.firstPerspective, required this.secondPerspective, required this.query});
  
  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      firstPerspective: json['firstPerspective'],
      secondPerspective: json['secondPerspective'],
      query: json['query'],
    );
  }

}
