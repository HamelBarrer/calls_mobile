class ApiConstant {
  final bool isWeb;

  ApiConstant({
    required this.isWeb,
  });

  static const String _apiWeb = 'http://localhost:3000';
  static const String _apiMobile = 'http://10.0.2.2:3000';

  String get apiVersion => isWeb ? '$_apiWeb/api/v1' : '$_apiMobile/api/v1';

  String get apiAuth => '$apiVersion/auth';
}
