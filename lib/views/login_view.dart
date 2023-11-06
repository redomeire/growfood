import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:growfood/views/Navbar.dart";

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final padding = EdgeInsets.all(screenWidth * 0.05);
    final buttonPadding = EdgeInsets.all(screenWidth * 0.03);
    final buttonWidth = screenWidth * 0.42;

    return Scaffold(
      body: ListView(
        padding: padding,
        children: [
          Container(
            height: screenHeight * 0.3,
            padding: padding,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.green),
            child: Image.asset("assets/logo/Logonotext.png"),
            width: screenWidth * 0.03,
          ),
          const SizedBox(height: 14),
          const Text(
            "Masuk",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: screenHeight * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Email"),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(screenWidth * 0.05),
                  hintText: "Cth: growfood@gmail.com",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Password"),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(screenWidth * 0.05),
                  hintText: "masukkan password",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Navbar()),
              );
            },
            icon: const Icon(Icons.login),
            label: Text(
              "Masuk",
              style: TextStyle(
                  fontSize: screenWidth * 0.04, fontWeight: FontWeight.w700),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)))),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          const Text(
            "atau masuk dengan",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(buttonPadding),
                      overlayColor:
                          MaterialStateProperty.resolveWith((Set states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.green.withOpacity(0.12);
                        }
                        return null;
                      }),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xfff2f4f7)),
                      elevation: const MaterialStatePropertyAll(1),
                      fixedSize:
                          MaterialStatePropertyAll(Size.fromWidth(buttonWidth)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/google.png"),
                      const SizedBox(width: 8),
                      Text(
                        "Google",
                        style: TextStyle(
                          color: const Color(0xff364152),
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.04,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                width: screenWidth * 0.02,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(buttonPadding),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff3C5A9A)),
                      elevation: const MaterialStatePropertyAll(0.0),
                      fixedSize:
                          MaterialStatePropertyAll(Size.fromWidth(buttonWidth)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/facebook.png"),
                      const SizedBox(width: 8),
                      Text(
                        "Facebook",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(height: 18),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Belum mempunyai akun?",
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Manrope-Reguler',
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("klik Daftar");
                      },
                    text: " Daftar",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
