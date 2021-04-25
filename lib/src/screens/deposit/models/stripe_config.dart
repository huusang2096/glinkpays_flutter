class StripeConfig {
  final String publishKey;
  final String secretKey;

  StripeConfig({this.publishKey, this.secretKey});
}

final stripeConfig = StripeConfig(
    publishKey:
        'pk_test_51HX3kxGFTLiOryPNQLDxbYDIUrwV9RclQ1KADEv7LtHZtsXA58E23b2qcBA3XZ7zsbDjb4fTgLcAkzKivB4rZLwd00MmYolbjq',
    secretKey:
        'sk_test_51HX3kxGFTLiOryPNDHW1RUcuIi5FM3xpnzkpxzGvGNhVEvjo7qywcK82dWWZziRmMObnPoRlKP6CT5KJckqLjz9v00aKrFLLz0');
