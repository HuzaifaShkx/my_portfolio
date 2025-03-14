import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';

class PricingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    bool isMobile=false;
    if(width<800){
      isMobile=true;
    }
    return Container(
      color: maincolor,
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Text('Pricing Plans', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.grey)),
          SizedBox(height: 20),
          isMobile? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _pricingCard('Starter', '\$100', ['1 Page App', 'Basic Support']),
              _pricingCard('Pro', '\$299', ['Full App', 'Priority Support', '1 Month Free Maintenance']),
              _pricingCard('Enterprise', '\$699', ['All Features', '24/7 Support', 'Custom Design']),
            ],
          ): Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _pricingCard('Starter', '\$100', ['1 Page App', 'Basic Support']),
              _pricingCard('Pro', '\$299', ['Full App', 'Priority Support', '1 Month Free Maintenance']),
              _pricingCard('Enterprise', '\$699', ['All Features', '24/7 Support', 'Custom Design']),
            ],
          )
        ],
      ),
    );
  }

  Widget _pricingCard(String title, String price, List<String> features) {
    return Card(
      color: servicesCardColor,
      elevation: 4,
      child: Container(
        width: 240,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: textPrimaryHeading)),
            SizedBox(height: 10),
            Text(price, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.grey)),
            SizedBox(height: 10),
            ...features.map((f) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text('• $f',style: TextStyle(color: secondaryTextColor),),
            )),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text('Select Plan',style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(textPrimaryHeading) ),)
          ],
        ),
      ),
    );
  }
}
