part of 'auth_imports.dart';
@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/auth_bg.png'), fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
