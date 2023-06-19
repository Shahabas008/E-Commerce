import 'package:flutter/material.dart';

class TextFormFieldLoginPageWidget extends StatefulWidget {
  TextFormFieldLoginPageWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldLoginPageWidget> createState() => _TextFormFieldLoginPageWidgetState();
}

class _TextFormFieldLoginPageWidgetState extends State<TextFormFieldLoginPageWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email / Phone",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.black,
          controller: emailController,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFAFAFA),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),

        const SizedBox(
          height: 30.0,
        ),
        const Text(
          "Password",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          obscureText: _isHidden,
          cursorColor: Colors.black,
          controller: passwordController,
          decoration: InputDecoration(
            suffix: GestureDetector(
              onTap: _togglePasswordView,
              child:Icon(
                _isHidden
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
            ),
            filled: true,
            fillColor: const Color(0xFFFAFAFA),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
