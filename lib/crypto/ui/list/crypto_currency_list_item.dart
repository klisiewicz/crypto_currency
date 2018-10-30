import 'package:crypto_currency/crypto/domain/crypto_currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoCurrencyListItem extends StatelessWidget {
  final CryptoCurrency cryptoCurrency;

  const CryptoCurrencyListItem({Key key, @required this.cryptoCurrency})
      : assert(cryptoCurrency != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: _buildPicture(),
        title: Text(cryptoCurrency.symbol),
        subtitle: Text(cryptoCurrency.name),
        onTap: () {},
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor(context)))),
    );
  }

  Widget _buildPicture() {
    return SvgPicture.asset(
      'assets/icons/${cryptoCurrency.symbol.toLowerCase()}.svg',
      placeholderBuilder: (BuildContext context) => CircleAvatar(),
    );
  }

  Color dividerColor(BuildContext context) => Theme.of(context).dividerColor;
}
