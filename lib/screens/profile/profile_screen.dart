import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade300,
                    child: Text(
                      'Hi!',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Implement login navigation or action
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            _buildProfileOption(
              context,
              icon: Icons.person,
              title: 'My personal details',
              onTap: () {
                // Navigate to personal details screen
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.location_on,
              title: 'My locations',
              onTap: () {
                // Navigate to locations screen
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.directions_car,
              title: 'My vehicles',
              onTap: () {
                // Navigate to vehicles screen
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.receipt,
              title: 'My orders',
              onTap: () {
                // Navigate to orders screen
              },
            ),
            Divider(),
            _buildProfileOption(
              context,
              icon: Icons.account_balance_wallet,
              title: 'Wallet',
              onTap: () {
                // Navigate to wallet screen
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.card_giftcard,
              title: 'Rewards',
              onTap: () {
                // Navigate to rewards screen
              },
            ),
            Divider(),
            _buildProfileOption(
              context,
              icon: Icons.headset_mic,
              title: 'Call us',
              onTap: () {
                // Call support
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.report,
              title: 'Warranty claim',
              onTap: () {
                // Navigate to warranty claim screen
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context,
      {required IconData icon, required String title, required Function onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => onTap(),
    );
  }
}
