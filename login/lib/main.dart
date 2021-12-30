import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginMockupChallenge(),
    );
  }
}

class LoginMockupChallenge extends StatelessWidget {
  const LoginMockupChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const FlutterLogo(
                size: 72,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextBoldCenter(
                      text: "Get your Money",
                      textColor: Colors.white,
                      fontSize: 24,
                    ),
                    TextBoldCenter(
                      text: "Under Control",
                      textColor: Colors.white,
                      fontSize: 24,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      child: const TextBoldCenter(
                        text: "Manage your expenses",
                        textColor: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const TextBoldCenter(
                      text: "Seamlessly",
                      textColor: Colors.grey,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 40,
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: ElevatedButton(
                        child: const Text("Sign Up with Email ID"),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff5f55eb),
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 35,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icon-google.png",
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "Sign Up with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              RichText(
                text: const TextSpan(
                  text: 'Already have an account?  ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextBoldCenter extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;

  const TextBoldCenter({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
