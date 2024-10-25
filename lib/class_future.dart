class GetOrder {
  Future<String> getOrder() {
    return Future.delayed(Duration(seconds: 3), () {
      bool isStockAvailable = false;

      // ignore: dead_code
      if (isStockAvailable) {
        return 'Coffee Boba';
      } else {
        throw 'Our stock is not enough!';
      }
    });
  }

  void saveOrder() async {
    print('Saving your order...');
    var order = await getOrder().catchError((err) {
      return 'Sorry, $err';
    });
    print('Save Order: $order');
  }
}
