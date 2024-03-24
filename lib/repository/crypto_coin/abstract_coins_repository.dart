import 'package:green_mobile/repository/crypto_coin/crypto_coins.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
