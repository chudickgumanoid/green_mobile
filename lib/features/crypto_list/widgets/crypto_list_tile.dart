import 'package:flutter/material.dart';
import 'package:green_mobile/repository/crypto_coin/crypto_coins.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin.name);
      },
      leading: Image.network(coin.imageURL),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle:
          Text('${coin.priceInUSD} \$', style: theme.textTheme.labelSmall),
    );
  }
}
