import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                children: [
                  Icon(Icons.lock_outline, color: Colors.blue, size: 32),
                  const SizedBox(width: 8),
                  Text('SecureSign', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue)),
                  Spacer(),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Text('Log In'),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
            // HERO SECTION
            Container(
              color: Colors.blue.shade50,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left: Texts and buttons
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Secure Document Authentication with Blockchain',
                            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                        SizedBox(height: 16),
                        Text(
                          'Create tamper-proof documents with digital signatures verified and secured by blockchain technology. Ensure your documents are protected, traceable, and immutable.',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            ElevatedButton(onPressed: () {}, child: Text('Get Started')),
                            SizedBox(width: 16),
                            OutlinedButton(onPressed: () {}, child: Text('Verify a Document')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Right: Illustration (placeholder)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Card(
                        elevation: 8,
                        child: Container(
                          height: 180,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.description, size: 48, color: Colors.blue),
                              SizedBox(height: 8),
                              Text('Contract Agreement', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Verified on Blockchain', style: TextStyle(color: Colors.black54)),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.verified, color: Colors.green),
                                  SizedBox(width: 8),
                                  Text('Blockchain Verified', style: TextStyle(color: Colors.green)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // FEATURES SECTION
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
              child: Column(
                children: [
                  Text('Key Features', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FeatureCard(
                        icon: Icons.security,
                        title: 'Blockchain Security',
                        description: 'Every document is secured using blockchain technology, making it tamper-proof and providing an immutable record.',
                        color: Colors.green.shade100,
                      ),
                      FeatureCard(
                        icon: Icons.description,
                        title: 'Digital Signatures',
                        description: 'Easily sign documents digitally with legal validity. Multiple signature options including electronic and biometric.',
                        color: Colors.blue.shade100,
                      ),
                      FeatureCard(
                        icon: Icons.verified,
                        title: 'Verification Portal',
                        description: 'Allow third parties to verify document authenticity instantly without needing an account.',
                        color: Colors.purple.shade100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // CALL TO ACTION
            Container(
              color: Colors.blue,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 48),
              child: Column(
                children: [
                  Text('Ready to secure your documents?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 16),
                  Text(
                    'Join thousands of businesses and individuals who trust SecureSign for their document security needs.',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.blue),
                    child: Text('Create Free Account'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  const FeatureCard({required this.icon, required this.title, required this.description, required this.color, super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, color: Colors.black54, size: 32),
              radius: 32,
            ),
            SizedBox(height: 16),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 8),
            Text(description, textAlign: TextAlign.center, style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}