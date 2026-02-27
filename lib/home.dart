import 'package:flutter/material.dart';
import 'Casual.dart';
import 'Events.dart';
import 'Kaftan.dart';
import 'prayer.dart';
import 'contactus.dart';
import 'login_signup_page.dart';

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header at the top
          Header(),

          // ListView for images
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 10, // Total number of images
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Scroll to the next image when tapped
                    if (index < 9) {  // Updated condition
                      _scrollController.animateTo(
                        (index + 1) * MediaQuery.of(context).size.height,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: BackgroundImage(imagePath: 'assets/images/image${index + 1}.jpg'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  final String imagePath;

  BackgroundImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, // Full height for each image
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),  // Rounded corners for a modern look
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,  // Ensures the image fits the container size
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white.withOpacity(0.9), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // AAB Logo
            Image.asset(
              'assets/images/aab.jpg',
              height: 40,
            ),

            // Navigation Menu
            NavigationMenu(),

            SizedBox(width: 10), // Space between menu and icons

            // Icon Row
            Row(
              children: [
                IconContainer(icon: Icons.home),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    // Navigate to the login/signup page when the person icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginSignupPage()),
                    );
                  },
                  child: IconContainer(icon: Icons.account_circle_rounded),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    // Navigate to the ContactPage when the phone icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );
                  },
                  child: IconContainer(icon: Icons.phone),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownMenu(
          title: '  CASUAL',
          items: ['assets/images/image4.jpg'],
        ),
        SizedBox(width: 20),
        DropdownMenu(
          title: 'EVENTS',
          items: ['assets/images/image2.jpg'],
        ),
        SizedBox(width: 20),
        DropdownMenu(
          title: 'PRAYER',
          items: ['assets/images/image6.jpg'],
        ),
        SizedBox(width: 20),
        DropdownMenu(
          title: 'KAFTAN  ',
          items: ['assets/images/image6.jpg'],
        ),
      ],
    );
  }
}

class DropdownMenu extends StatefulWidget {
  final String title;
  final List<String> items;

  DropdownMenu({required this.title, required this.items});

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          // Navigate to the specific page based on title
          if (widget.title.contains('CASUAL')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CasualPage()));
          } else if (widget.title.contains('EVENTS')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EventsPage()));
          } else if (widget.title.contains('PRAYER')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PrayerPage()));
          } else if (widget.title.contains('KAFTAN')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => KaftanPage()));
          }
        },
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: _isHovered ? Colors.blue : Colors.black,
              ),
            ),
            if (_isHovered)
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurRadius: 8,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: widget.items.map((item) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      child: Image.asset(
                        item,
                        height: 120,
                      ),
                    );
                  }).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;

  IconContainer({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 24,
        color: Colors.black,
      ),
    );
  }
}
