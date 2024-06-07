import 'exports.dart';

class AddInfoPage extends StatelessWidget {
  AddInfoPage({super.key, required this.hintText, required this.child});

  final String hintText;

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        const SizedBox(height: 5),
        child,
        const SizedBox(height: 7),

      ],
    );
  }
}
