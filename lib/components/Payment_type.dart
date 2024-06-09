import 'package:wheat_check/pages/exports.dart';

class PaymentType extends StatelessWidget {
    PaymentType({
    super.key,
    required this.hintText,
    required this.child,
  });
  final String hintText;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Text(
         hintText,
         style: TextStyle(
             fontWeight: FontWeight.w700, fontSize: 16),
             
       ),
       SizedBox(height: 5),
       child
     ],
                          );
  }
}
