import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Kaftan.dart';
import 'Events.dart';
import 'prayer.dart';
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
      home: CasualPage(),
    );
  }
}

class CasualPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  // Descriptions for the images
  List<String> imageDescriptions = [
    "This is a casual design with modern aesthetics.",
    "Elegant and versatile outfit for any casual occasion.",
    "Simple yet stylish apparel that redefines comfort.",
    "A fusion of tradition and modernity in casual wear.",
    "Perfect summer casual attire for a breezy look.",
    "Urban-inspired design for the fashion-forward individual.",
    "Minimalistic casual wear for effortless style.",
    "Classic colors and patterns for a timeless look.",
    "Relaxed fit and chic style for everyday wear.",
    "Eco-friendly fabric with a contemporary design.",
    "This casual abaya combines traditional charm with modern aesthetics, offering a versatile and stylish addition to any wardrobe. Perfect for a day out or a relaxed evening gathering, it redefines elegance with its simple yet chic silhouette.",
    "Designed for comfort and sophistication, this abaya features soft, breathable fabric and a flattering cut that exudes grace. Ideal for casual wear, it adds a touch of modest elegance to your everyday look.",
    "A casual abaya that blends modesty with contemporary fashion, providing a chic and relaxed look. Its versatile design makes it perfect for both casual gatherings and day-to-day wear.",
    "This effortlessly stylish casual abaya is made with premium materials, ensuring comfort without compromising on style. Its sleek lines and refined fit make it perfect for any casual outing.",
    "A timeless piece that embodies the essence of casual wear with a modest twist. Its clean design and flattering silhouette make it the ideal choice for a laid-back yet sophisticated look.",
    "Crafted with attention to detail, this casual abaya offers a stylish and modest option for any occasion. The elegant design is both timeless and on-trend, providing a perfect balance of fashion and function.",
    "A perfect fusion of traditional and modern elements, this casual abaya features subtle embellishments that elevate its look. Ideal for everyday wear, it offers both comfort and style in one.",
    "An effortlessly elegant casual abaya that combines modern cuts with traditional influences. Its versatile design is perfect for various occasions, whether for a casual day out or a gathering with friends.",
    "This relaxed and easy-to-wear casual abaya is designed to provide the perfect combination of comfort and style. With its minimalist design and high-quality fabric, it’s ideal for those who value simplicity and elegance.",
    "Made from lightweight, breathable fabric, this casual abaya is the epitome of casual chic. Its sleek, comfortable design allows for a fluid and relaxed look, making it perfect for a sunny day.",


  ];

  // Links corresponding to the images
  List<String> imageLinks = [
    Uri.encodeFull("https://modestyabaya.com/en/shop/products/Burgundy-Pleated-Dress"),
    Uri.encodeFull("https://pk.sapphireonline.pk/collections/modest-wear?srsltid=AfmBOopxFlNe3XzA55z9V0-ijHzw8bHJMqpKpYJOEocMoTwVjuOmBCVB"),
    Uri.encodeFull("https://tgmstore.pk/collections/modest-abayas?srsltid=AfmBOoqudGtg2mEzKSxZufCNDEbjQ9Q7_Y429ridLD1tEAidaLSyvQQB"),
    Uri.encodeFull("https://wearabaa.co/?srsltid=AfmBOoqih2yJnsJi5AK1iBafCO0HEO7kC3-WbFT9B_yqBv5RzULBymNr"),
    Uri.encodeFull("https://modestyabaya.com/en"),
    Uri.encodeFull("https://spinzarstore.com/?srsltid=AfmBOoqXtgZUz8iu9WxS0dXUZlXfbEse2ei8Ok41aV05LjuPzPLfCPj0"),
    Uri.encodeFull("https://pk.sapphireonline.pk/collections/modest-wear?srsltid=AfmBOopxFlNe3XzA55z9V0-ijHzw8bHJMqpKpYJOEocMoTwVjuOmBCVB"),
    Uri.encodeFull("https://tgmstore.pk/collections/modest-abayas?srsltid=AfmBOoqudGtg2mEzKSxZufCNDEbjQ9Q7_Y429ridLD1tEAidaLSyvQQB"),
    Uri.encodeFull("https://wearabaa.co/?srsltid=AfmBOoqih2yJnsJi5AK1iBafCO0HEO7kC3-WbFT9B_yqBv5RzULBymNr"),
    Uri.encodeFull("https://modestyabaya.com/en"),
    Uri.encodeFull("https://spinzarstore.com/?srsltid=AfmBOoqXtgZUz8iu9WxS0dXUZlXfbEse2ei8Ok41aV05LjuPzPLfCPj0"),
    Uri.encodeFull("https://pk.sapphireonline.pk/collections/modest-wear?srsltid=AfmBOopxFlNe3XzA55z9V0-ijHzw8bHJMqpKpYJOEocMoTwVjuOmBCVB"),
    Uri.encodeFull("https://tgmstore.pk/collections/modest-abayas?srsltid=AfmBOoqudGtg2mEzKSxZufCNDEbjQ9Q7_Y429ridLD1tEAidaLSyvQQB"),
    Uri.encodeFull("https://wearabaa.co/?srsltid=AfmBOoqih2yJnsJi5AK1iBafCO0HEO7kC3-WbFT9B_yqBv5RzULBymNr"),
    Uri.encodeFull("https://modestyabaya.com/en"),
    Uri.encodeFull("https://spinzarstore.com/?srsltid=AfmBOoqXtgZUz8iu9WxS0dXUZlXfbEse2ei8Ok41aV05LjuPzPLfCPj0"),
    Uri.encodeFull("https://pk.sapphireonline.pk/collections/modest-wear?srsltid=AfmBOopxFlNe3XzA55z9V0-ijHzw8bHJMqpKpYJOEocMoTwVjuOmBCVB"),
    Uri.encodeFull("https://tgmstore.pk/collections/modest-abayas?srsltid=AfmBOoqudGtg2mEzKSxZufCNDEbjQ9Q7_Y429ridLD1tEAidaLSyvQQB"),
    Uri.encodeFull("https://wearabaa.co/?srsltid=AfmBOoqih2yJnsJi5AK1iBafCO0HEO7kC3-WbFT9B_yqBv5RzULBymNr"),
    Uri.encodeFull("https://modestyabaya.com/en"),
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
                image: AssetImage('assets/images/casual${widget.index + 1}.jpg'),
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
          imagePath: 'assets/images/casual${index + 1}.jpg',
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