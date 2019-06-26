import 'package:http/http.dart' as http;
import 'dart:convert';

const coinApiURL = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  //TODO: Create your getCoinData() method here.
  Future<String> getCoinData(String crypto, String currency) async {
    http.Response response =
        await http.get('${coinApiURL}${crypto}${currency}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['last'].toString();
    } else {
      print(response.statusCode);
      return '?';
    }
  }
}
