//Burada ._ yazılması gerekmektedir çünkü yazılmazsa dışardan herhangi biri gelip api keye eşitleme yapabilir.
//Bu da güvenlik açığı demektir.
class ProductConfig {
  static final ProductConfig? instance = ProductConfig._('dh');

  final String apiKey;
  ProductConfig._(this.apiKey);
}
