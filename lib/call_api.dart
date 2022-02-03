import 'package:http/http.dart' as http;

class CallApi {
  final String _url = "http://localhost:8080/api/";
  final String _imgUrl = "http://localhost:8080/uploads/";

  getImage() {
    return _imgUrl;
  }

  getPublicData(apiUrl) async {
    http.Response response = await http.get(Uri.parse(_url + apiUrl));

    try {
      if (response.statusCode == 200) {
        return response;
      } else {
        return 'failed';
      }
    } catch (e) {
      print(e);
      return 'failed';
    }
  }
}
