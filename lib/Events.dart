import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Kaftan.dart';
import 'Casual.dart';
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
      home: EventsPage(),
    );
  }
}

class EventsPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  // Descriptions for the images
  final List<String> imageDescriptions = [
    "This event abaya features intricate embroidery and a flowing silhouette that exudes grace and sophistication. Designed for formal gatherings, it offers a perfect balance of modesty and luxury, ensuring you make a statement at any event.",

    "Crafted with attention to detail, this event abaya is adorned with delicate embellishments that shimmer subtly. Its refined design and luxurious fabric make it the perfect choice for weddings, parties, or formal celebrations.",

    "This abaya blends modern design with traditional elegance. The intricate patterns and luxurious fabric create a look that commands attention while maintaining modesty. Ideal for evening events and formal occasions, it radiates sophistication.",

    "Step into any event with confidence in this regal abaya. Its flowing silhouette, detailed embroidery, and elegant design make it perfect for formal gatherings. The rich fabric ensures comfort while adding a touch of opulence.",

    "This event abaya combines luxurious fabrics with intricate detailing, creating a stunning ensemble that’s perfect for special occasions. The elegant drape and subtle embellishments offer a sophisticated yet modest look.",

    "Designed for formal events, this abaya features intricate lacework and delicate embellishments. Its flowing design and luxurious fabric provide both comfort and elegance, ensuring you look and feel your best.",

    "This event abaya is a true embodiment of grace and allure. The rich fabric and intricate detailing create a stunning visual impact, while the modest cut ensures elegance and sophistication. Perfect for any special occasion.",

    "This abaya offers a breathtaking blend of modesty and luxury, with its flowing silhouette and exquisite detailing. The soft, high-quality fabric ensures comfort, making it an ideal choice for weddings, receptions, or gala events.",

    "This modest event abaya is designed to make you shine at any formal occasion. The intricate embellishments and flowing fabric create an elegant look, while the relaxed fit ensures comfort throughout the event.",

    "This event abaya embodies majestic simplicity, featuring delicate embroidery and a timeless silhouette. Its understated elegance makes it perfect for any formal gathering, offering a blend of tradition and contemporary style.",

    "This abaya is crafted for the modern woman who values modest elegance. The intricate patterns and luxurious fabric create a sophisticated look that’s perfect for formal events. It’s a timeless piece that exudes class.",

    "This event abaya offers effortless glamour with its flowing design and intricate embellishments. The high-quality fabric drapes beautifully, while the modest cut ensures an elegant and refined appearance.",

    "This abaya features delicate embroidery and a graceful silhouette, making it the perfect choice for formal events. Its luxurious fabric and modest design create a look that’s both refined and captivating.",

    "This event abaya is designed to celebrate modest elegance. Its intricate detailing and flowing fabric create a sophisticated look that’s perfect for formal occasions. It offers a timeless appeal that never goes out of style.",

    "This abaya is a testament to opulent design and craftsmanship. The intricate embellishments and luxurious fabric create a stunning ensemble that’s perfect for grand events. Its modest silhouette adds to its timeless elegance.",

    "This event abaya offers glamorous simplicity with its flowing lines and subtle detailing. The rich fabric and modest cut create an elegant look that’s perfect for formal gatherings. It’s a versatile piece that exudes sophistication.",

    "This abaya is designed for those who appreciate majestic elegance. The intricate patterns and luxurious fabric create a stunning look, while the modest silhouette ensures comfort and grace. Ideal for any formal celebration.",

    "This event abaya seamlessly blends traditional craftsmanship with modern luxury. The intricate embroidery and flowing fabric create a sophisticated look, perfect for weddings, parties, or formal events.",

    "This abaya features ethereal beauty with its delicate embellishments and flowing silhouette. The luxurious fabric drapes elegantly, making it the perfect choice for formal occasions where sophistication and modesty are key.",

    "This event abaya offers timeless elegance with a modern flair. The intricate detailing and luxurious fabric create a stunning look, while the modest design ensures grace and comfort. It’s perfect for any formal gathering or celebration.",
  ];

  // Links corresponding to the images
  List<String> imageLinks = [
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://tgmstore.pk/collections/abaya?srsltid=AfmBOooYLzJs-LnxN3pWJKCYk35_pJCHqvRw0hG4Bb8ge6lSQ1nzhgmf"),
    Uri.encodeFull("https://www.aaliyacollections.com/collections/occasion-abayas?srsltid=AfmBOooN4zIp0O4YOGGmusJuQS66qHFPcEcQNMxc1LJVsz42GSFgJSx0"),
    Uri.encodeFull("https://layaancollection.com/collections/event-wear-abayas"),
    Uri.encodeFull("https://www.store-nabira.com/32-abaya?page=2&srsltid=AfmBOoqLZMx13nx4bqAaY6F9neejgmOEk-ip8g-k_kySgSCL1SjtgMTx"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://tgmstore.pk/collections/abaya?srsltid=AfmBOooYLzJs-LnxN3pWJKCYk35_pJCHqvRw0hG4Bb8ge6lSQ1nzhgmf"),
    Uri.encodeFull("https://www.aaliyacollections.com/collections/occasion-abayas?srsltid=AfmBOooN4zIp0O4YOGGmusJuQS66qHFPcEcQNMxc1LJVsz42GSFgJSx0"),
    Uri.encodeFull("https://layaancollection.com/collections/event-wear-abayas"),
    Uri.encodeFull("https://www.store-nabira.com/32-abaya?page=2&srsltid=AfmBOoqLZMx13nx4bqAaY6F9neejgmOEk-ip8g-k_kySgSCL1SjtgMTx"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://tgmstore.pk/collections/abaya?srsltid=AfmBOooYLzJs-LnxN3pWJKCYk35_pJCHqvRw0hG4Bb8ge6lSQ1nzhgmf"),
    Uri.encodeFull("https://www.aaliyacollections.com/collections/occasion-abayas?srsltid=AfmBOooN4zIp0O4YOGGmusJuQS66qHFPcEcQNMxc1LJVsz42GSFgJSx0"),
    Uri.encodeFull("https://layaancollection.com/collections/event-wear-abayas"),
    Uri.encodeFull("https://www.store-nabira.com/32-abaya?page=2&srsltid=AfmBOoqLZMx13nx4bqAaY6F9neejgmOEk-ip8g-k_kySgSCL1SjtgMTx"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),
    Uri.encodeFull("https://thehijabcompany.pk/collections/abayas?srsltid=AfmBOoqclbBnK177htwLxBseHdR5j6PV1_dYOd9LPTiVZ8TJxf8VTGmu"),

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
                image: AssetImage('assets/images/event${widget.index + 1}.jpg'),
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
          imagePath: 'assets/images/event${index + 1}.jpg',
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