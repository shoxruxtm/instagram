abstract final class ApiConst {
  static const _baseUrl = String.fromEnvironment(
    "base_ulr",
    defaultValue: "....",
  );

  static const apiKey = String.fromEnvironment(
    "api_key",
    defaultValue: ",,,,,",
  );

  static const photosPath ="https://api.unsplash.com/photos";

  static Map<String, List<String>> searchQuery(String searchText) => {
    "q": [searchText],
  };

  static Map<String, List<String>> paginationParams(int limit, int page) => {
    "per_page": ["$limit"],
    "page": ["$page"],
  };
}
