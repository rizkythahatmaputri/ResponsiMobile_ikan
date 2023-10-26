/*class ApiUrl {
  static const String baseUrl = 'https://responsi1a.dalhaqq.xyz/';

  static const String listIkan = baseUrl + '/ikan';
  static const String createIkan = baseUrl + '/ikan';

  //static String getIkanById(int id) => baseUrl + '/ikan/$id';
  static String getIkanById(int id) {
        return baseUrl + '//ikan/$id/' + id.toString() + '//ikan/$id';

  }

  static String updateIkan(int id) {
    return baseUrl + '/ikan/' + id.toString() + '/ikan';
  }
  static String deleteIkan(int id) https://responsi1a.dalhaqq.xyz/ {
    return baseUrl + '/ikan/' + id.toString();
  }
}
*/

class ApiUrl {
  static const String baseUrl = 'https://responsi1a.dalhaqq.xyz/';

  static const String registrasi = baseUrl + '/registrasi';
  static const String login = baseUrl + '/login';
  static const String listIkan = baseUrl + '/ikan';
  static const String createIkan = baseUrl + '/ikan';

  static String updateIkan(int id) {
    return baseUrl + '/ikan/' + id.toString();
  }

  static String showIkan(int id) {
    return baseUrl + '/ikan/' + id.toString();
  }

  static String deleteIkan(int id) {
    return baseUrl + '/ikan/' + id.toString();
  }
}
