import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Kaftan.dart';
import 'Events.dart';
import 'Casual.dart';
import 'login_signup_page.dart';
import 'contactus.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AAB Pakistan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrayerPage(),
    );
  }
}

class PrayerPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  // Descriptions for the images

  final List<String> imageDescriptions = [
    "Embrace serenity and grace with this modest prayer abaya.",
    "A symbol of devotion, crafted with comfort and elegance.",
    "Designed for tranquility, perfect for every moment of prayer.",
    "Modesty and simplicity in harmony for your spiritual journey.",
    "Where elegance meets devotion—crafted for peaceful prayers.",
    "A blend of comfort and modesty to enhance your spiritual moments.",
    "Soft fabric, modest design—perfect for reflection and prayer.",
    "Wrap yourself in tranquility with this beautifully crafted prayer abaya.",
    "Timeless modesty, designed for the heart at peace.",
    "An elegant companion for your moments of devotion and faith.",
    "Reflect your inner peace with this graceful prayer abaya.",
    "Modest elegance to elevate your prayer experience.",
    "A serene blend of simplicity and comfort for prayer time.",
    "Stay connected in faith with the elegance of this abaya.",
    "Designed to bring peace and modesty into your daily prayers.",
    "Simple yet sophisticated—perfect for moments of spiritual connection.",
    "Let comfort and modesty accompany you on your path of faith.",
    "Where comfort meets spirituality, enhancing every prayer moment.",
    "A prayer abaya that reflects grace, purity, and devotion.",
    "Soft hues, modest design—a perfect embrace for your prayers."
  ];



  // Links corresponding to the images
  List<String> imageLinks = [
    Uri.encodeFull("https://abayabuth.com/collections/jilbabs?srsltid=AfmBOoruiH4YYpHXJe0IRYAevdGCAUCwVYKl2M2-uPQhj8jKfXYxrDQF"),
    Uri.encodeFull("https://www.zohacci.com/products/ramadan-taraweeh-abaya?srsltid=AfmBOopvgFkAB7wQ0q0OUyUARvo-e6_JwVtcLHV6VzO0q3FtoGTUkY12"),
    Uri.encodeFull("https://int.aabcollection.com/collections/prayer-outfits"),
    Uri.encodeFull("https://rumluh.com/collections/prayer-gown"),
    Uri.encodeFull("https://www.yallaworldx.com/collections/women-prayer-abaya"),
    Uri.encodeFull("https://abayabuth.com/collections/jilbabs?srsltid=AfmBOoruiH4YYpHXJe0IRYAevdGCAUCwVYKl2M2-uPQhj8jKfXYxrDQF"),
    Uri.encodeFull("https://www.zohacci.com/products/ramadan-taraweeh-abaya?srsltid=AfmBOopvgFkAB7wQ0q0OUyUARvo-e6_JwVtcLHV6VzO0q3FtoGTUkY12"),
    Uri.encodeFull("https://int.aabcollection.com/collections/prayer-outfits"),
    Uri.encodeFull("https://rumluh.com/collections/prayer-gown"),
    Uri.encodeFull("https://www.yallaworldx.com/collections/women-prayer-abaya"),
    Uri.encodeFull("https://abayabuth.com/collections/jilbabs?srsltid=AfmBOoruiH4YYpHXJe0IRYAevdGCAUCwVYKl2M2-uPQhj8jKfXYxrDQF"),
    Uri.encodeFull("https://www.zohacci.com/products/ramadan-taraweeh-abaya?srsltid=AfmBOopvgFkAB7wQ0q0OUyUARvo-e6_JwVtcLHV6VzO0q3FtoGTUkY12"),
    Uri.encodeFull("https://int.aabcollection.com/collections/prayer-outfits"),
    Uri.encodeFull("https://rumluh.com/collections/prayer-gown"),
    Uri.encodeFull("https://www.yallaworldx.com/collections/women-prayer-abaya"),
    Uri.encodeFull("https://abayabuth.com/collections/jilbabs?srsltid=AfmBOoruiH4YYpHXJe0IRYAevdGCAUCwVYKl2M2-uPQhj8jKfXYxrDQF"),
    Uri.encodeFull("https://www.zohacci.com/products/ramadan-taraweeh-abaya?srsltid=AfmBOopvgFkAB7wQ0q0OUyUARvo-e6_JwVtcLHV6VzO0q3FtoGTUkY12"),
    Uri.encodeFull("https://int.aabcollection.com/collections/prayer-outfits"),
    Uri.encodeFull("https://rumluh.com/collections/prayer-gown"),
    Uri.encodeFull("https://www.yallaworldx.com/collections/women-prayer-abaya"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header at the top
          Header(),

          // Expanded GridView for images
          Expanded(
            child: GridView.builder(
              controller: _scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: imageDescriptions.length,
              itemBuilder: (context, index) {
                return HeartImageCard(
                  index: index,
                  description: imageDescriptions[index],
                  link: imageLinks[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HeartImageCard extends StatefulWidget {
  final int index;
  final String description;
  final String link;

  const HeartImageCard({
    required this.index,
    required this.description,
    required this.link,
  });

  @override
  _HeartImageCardState createState() => _HeartImageCardState();
}

class _HeartImageCardState extends State<HeartImageCard> {
  bool _isHeartFilled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToDetailPage(context, widget.index, widget.description, widget.link);
      },
      child: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/images/prayer${widget.index + 1}.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isHeartFilled = !_isHeartFilled;
                });
              },
              child: Icon(
                _isHeartFilled ? Icons.favorite : Icons.favorite_border,
                color: _isHeartFilled ? Colors.pink : Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToDetailPage(BuildContext context, int index, String description, String link) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageDetailPage(
          imagePath: 'assets/images/prayer${index + 1}.jpg',
          description: description,
          link: link,
        ),
      ),
    );
  }
}

class ImageDetailPage extends StatelessWidget {
  final String imagePath;
  final String description;
  final String link;

  ImageDetailPage({required this.imagePath, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Details')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 4.0,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _launchURL(link);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Click here to explore more abayas like this",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication); // Opens in the external browser
    } else {
      throw 'Could not launch $url';
    }
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
                GestureDetector(
                  onTap: () {
                    // Navigate to the HomePage when the home icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()), // Assuming HomePage is the home page
                    );
                  },
                  child: IconContainer(icon: Icons.home),
                ),
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DropdownMenu(title: 'CASUAL'),
        SizedBox(width: 10),
        DropdownMenu(title: 'EVENTS'),
        SizedBox(width: 10),
        DropdownMenu(title: 'PRAYER'),
        SizedBox(width: 10),
        DropdownMenu(title: 'KAFTAN'),
      ],
    );
  }
}

class DropdownMenu extends StatefulWidget {
  final String title;

  DropdownMenu({required this.title});

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
          _navigateToPage(context);
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
          ],
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context) {
    if (widget.title.trim() == "CASUAL") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CasualPage()),
      );
    } else if (widget.title.trim() == "EVENTS") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EventsPage()),
      );
    } else if (widget.title.trim() == "PRAYER") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrayerPage()),
      );
    } else if (widget.title.trim() == "KAFTAN") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KaftanPage()),
      );
    }
  }
}

class IconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainer(icon: Icons.home),
        SizedBox(width: 10),
        IconContainer(icon: Icons.account_circle_rounded),
        SizedBox(width: 10),
        IconContainer(icon: Icons.phone),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  IconContainer({required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}