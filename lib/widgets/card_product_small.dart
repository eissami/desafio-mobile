import 'package:flutter/material.dart';
import 'package:marketplace/pages/product.dart';

class CardProductSmall extends StatelessWidget {
  int productId;
  Widget illustration;
  String productName;
  double productValue;
  Function onTap;

  CardProductSmall({
    this.productId,
    this.illustration,
    this.productName,
    this.productValue,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductPage(
                    productId: productId,
                    product: productName,
                  )),
        );
      },
      child: Container(
        height: 135,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(
            const Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x77E7EAF0),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(2, 2), // changes position of shadow
            ),
          ],
        ),
        width: (MediaQuery.of(context).size.width - 72) / 3,
        padding: EdgeInsets.all(11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: ((MediaQuery.of(context).size.width - 72) / 3) - 26,
                height: ((MediaQuery.of(context).size.width - 72) / 3) - 26,
                child: illustration),
            Container(
              width: ((MediaQuery.of(context).size.width - 72) / 3) - 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productName,
                    style: TextStyle(
                        color: Color(0xFF515C6F), fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '\$${productValue.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Color(0xFF515C6F), fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
