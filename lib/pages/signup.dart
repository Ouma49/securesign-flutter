import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8FA),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 16,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.lock_outline, color: Colors.blue, size: 48),
                SizedBox(height: 8),
                Text('SecureSign',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                SizedBox(height: 24),
                Text('Create Account',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Fill in the details to create your account',
                    style: TextStyle(color: Colors.black54)),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'name@example.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Password',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '••••••••',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child:
                        Text('Sign Up', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      child:
                          Text('Sign In', style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
