import 'package:flutter/material.dart';
import 'package:smpn45makassar/pages/guru/home.dart';
import 'package:smpn45makassar/pages/siswa/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });

      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      if (email.isEmpty || password.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Email dan password harus diisi!"),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      // Cek akun dummy
      if (email == "guru@example.com" && password == "guru123") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeGuru()),
        );
      } else if (email == "siswa@example.com" && password == "siswa123") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeSiswa()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Email atau password salah!"),
            backgroundColor: Colors.red,
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: screenHeight -
                MediaQuery.of(context).padding.top -
                kToolbarHeight,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Transform.translate(
                      offset: const Offset(0, -40),
                      child: SizedBox(
                        width: screenWidth * 0.8,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: screenWidth * 0.8,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Column(
                              children: [
                                SizedBox(
                                  height: 55,
                                  child: TextField(
                                    controller: _emailController,
                                    enabled: !_isLoading,
                                    decoration: const InputDecoration(
                                      hintText: 'Email',
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                SizedBox(
                                  height: 55,
                                  child: TextField(
                                    controller: _passwordController,
                                    enabled: !_isLoading,
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                        ),
                                        onPressed: _isLoading
                                            ? null
                                            : () {
                                                setState(() {
                                                  _obscureText = !_obscureText;
                                                });
                                              },
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 40),
                                ElevatedButton(
                                  onPressed: _isLoading ? null : _handleLogin,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF4DA9FF),
                                    shape: const RoundedRectangleBorder(),
                                    minimumSize: Size(screenWidth * 0.85, 55),
                                    disabledBackgroundColor:
                                        const Color(0xFF4282C2),
                                  ),
                                  child: _isLoading
                                      ? const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Colors.white),
                                          ),
                                        )
                                      : const Text(
                                          'Login',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'SMPN 45 MAKASSAR',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.4,
                      leadingDistribution: TextLeadingDistribution.even,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
