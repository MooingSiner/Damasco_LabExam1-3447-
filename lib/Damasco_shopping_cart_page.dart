
import 'package:flutter/material.dart';

// COLOR THEME
const Color primaryBlue = Color(0xFFC5A45E);
const Color lightBlue = Color(0xFFE8D9B5);
const Color pageBackground = Color(0xFF202329);
const Color darkText = Color(0xFFF5F1E8);
const Color cardColor = Color(0xFF30343B);
const Color secondaryText = Color(0xFFB8B1A3);
const Color borderColor = Color(0xFF484B50);

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: pageBackground,

        // APP BAR
        appBar: AppBar(
          backgroundColor: cardColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: darkText,
            ),
            onPressed: () {
              debugPrint('Back clicked');
            },
          ),
          title: const Text(
            'My Cart',
            style: TextStyle(
              color: darkText,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Cart clicked');
              },
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.shopping_bag_outlined,
                    color: darkText,
                    size: 27,
                  ),
                  Positioned(
                    right: -7,
                    top: -7,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: primaryBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Color(0xFF202329),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),

        // PAGE CONTENT
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // INTRODUCTION

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'CAMPUS STORE',
                  style: TextStyle(
                    color: Color(0xFF202329),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Ready for checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: darkText,
                ),
              ),

              const SizedBox(height: 3),

              const Text(
                'Review your items before placing your order.',
                style: TextStyle(
                  fontSize: 13,
                  color: secondaryText,
                ),
              ),

              const SizedBox(height: 18),

              // DELIVERY INFORMATION

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: primaryBlue,
                      size: 25,
                    ),

                    const SizedBox(width: 12),

                    Container(
                      width: 1,
                      height: 38,
                      color: borderColor,
                    ),

                    const SizedBox(width: 12),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deliver to Student\'s Full Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: darkText,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Matina, Davao City',
                            style: TextStyle(
                              fontSize: 12,
                              color: secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        debugPrint(
                          'Change delivery address clicked',
                        );
                      },
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          color: primaryBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // ORDER ITEMS HEADING

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Items',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),
                  Text(
                    '3 items',
                    style: TextStyle(
                      fontSize: 13,
                      color: secondaryText,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // PRODUCT CARDS

              const CartItemCard(
                productName: 'Wireless Mouse',
                price: 'PHP 450.00',
                quantity: 1,
                icon: Icons.mouse_outlined,
              ),

              const SizedBox(height: 8),

              const CartItemCard(
                productName: 'USB-C Hub',
                price: 'PHP 850.00',
                quantity: 1,
                icon: Icons.usb,
              ),

              const SizedBox(height: 8),

              const CartItemCard(
                productName: 'Laptop Stand',
                price: 'PHP 700.00',
                quantity: 1,
                icon: Icons.laptop_outlined,
              ),

              const SizedBox(height: 12),

              // DISCOUNT BANNER

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.local_offer_outlined,
                      color: Color(0xFF202329),
                      size: 23,
                    ),

                    const SizedBox(width: 12),

                    Container(
                      width: 1,
                      height: 35,
                      color: Color(0xFFC5A45E),
                    ),

                    const SizedBox(width: 12),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STUDENT10 applied',
                            style: TextStyle(
                              color: Color(0xFF202329),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '10% discount on items',
                            style: TextStyle(
                              color: Color(0xFF514A3C),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.check_circle,
                      color: Color(0xFF202329),
                      size: 23,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // PAYMENT SUMMARY

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: darkText,
                      ),
                    ),

                    const SizedBox(height: 10),

                    _summaryRow(
                      'Subtotal',
                      'PHP 2,000.00',
                    ),

                    const SizedBox(height: 5),

                    _summaryRow(
                      'Discount (10%)',
                      '- PHP 200.00',
                    ),

                    const SizedBox(height: 5),

                    _summaryRow(
                      'Delivery Fee',
                      'PHP 50.00',
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Divider(
                        height: 1,
                        color: borderColor,
                      ),
                    ),

                    _summaryRow(
                      'Total',
                      'PHP 1,850.00',
                      isTotal: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // PLACE ORDER BUTTON

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint(
                      'Place order clicked! Total: PHP 1850.00',
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryBlue,
                    foregroundColor: const Color(0xFF202329),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock, size: 19),
                      SizedBox(width: 9),
                      Text(
                        'Place Order',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  // PAYMENT SUMMARY ROW

  static Widget _summaryRow(
    String label,
    String amount, {
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 15 : 13,
            fontWeight:
                isTotal ? FontWeight.bold : FontWeight.normal,
            color: isTotal ? darkText : secondaryText,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: isTotal ? 15 : 13,
            fontWeight: FontWeight.bold,
            color: isTotal ? primaryBlue : darkText,
          ),
        ),
      ],
    );
  }
}

// REUSABLE CART ITEM CARD

class CartItemCard extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [

          // PRODUCT ICON

          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF202329),
              size: 32,
            ),
          ),

          const SizedBox(width: 12),

          // PRODUCT DETAILS

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: primaryBlue,
                  ),
                ),

                const SizedBox(height: 6),

                // QUANTITY CONTROLS

                Row(
                  children: [
                    _quantityButton(
                      icon: Icons.remove,
                      onPressed: () {
                        debugPrint(
                          'Decrease quantity: $productName',
                        );
                      },
                    ),

                    Container(
                      width: 40,
                      height: 25,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: darkText,
                        ),
                      ),
                    ),

                    _quantityButton(
                      icon: Icons.add,
                      onPressed: () {
                        debugPrint(
                          'Increase quantity: $productName',
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // DELETE BUTTON

          SizedBox(
            width: 35,
            height: 35,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.delete_outline,
                color: secondaryText,
                size: 21,
              ),
              onPressed: () {
                debugPrint('Remove item: $productName');
              },
            ),
          ),
        ],
      ),
    );
  }

  // QUANTITY BUTTON

  static Widget _quantityButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 32,
      height: 25,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: const BorderSide(
            color: primaryBlue,
            width: 1.3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Icon(
          icon,
          size: 18,
          color: primaryBlue,
        ),
      ),
    );
  }
}
