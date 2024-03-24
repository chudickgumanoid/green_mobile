import 'package:dio/dio.dart';
import 'package:green_mobile/repository/crypto_coin/abstract_coins_repository.dart';
import 'package:green_mobile/repository/crypto_coin/models/crypto_coin.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({required this.dio});
  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final ctyptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'] as double;
      final imgURL = usdData['IMAGEURL'] as String;

      return CryptoCoin(
          name: e.key,
          priceInUSD: price,
          imageURL: 'https://www.cryptocompare.com$imgURL');
    }).toList();

    return ctyptoCoinsList;
  }
}
