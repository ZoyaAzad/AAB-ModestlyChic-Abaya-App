import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Casual.dart';
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
      home: KaftanPage(),
    );
  }
}

class KaftanPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  // Descriptions for the images
  final List<String> imageDescriptions = [
    "This modest kaftan abaya exudes timeless elegance with its flowing silhouette and delicate design. The wide sleeves and relaxed fit provide unmatched comfort, while the intricate embroidery adds a touch of sophistication. Perfect for both casual outings and formal gatherings, this kaftan seamlessly blends tradition with contemporary style.",

    "Crafted from high-quality fabric, this kaftan abaya embodies luxury through its minimalistic design and impeccable craftsmanship. The relaxed drape creates an effortlessly chic look, offering both comfort and modesty. Its subtle embellishments add a hint of sparkle, making it ideal for any special occasion.",

    "This kaftan abaya combines the richness of traditional craftsmanship with modern aesthetics. The flowing lines and lightweight fabric create a flattering silhouette, while intricate details around the neckline and sleeves bring understated elegance. It’s a perfect blend of modesty and fashion-forward design.",

    "Designed with comfort in mind, this kaftan abaya features soft, breathable fabric that gracefully flows with every movement. The relaxed fit offers ease of wear, while the delicate embroidery and subtle patterns add an element of sophistication. It’s perfect for warm days or laid-back evenings.",

    "This kaftan abaya showcases an exquisite balance of tradition and contemporary flair. Its flowing design, accented by intricate detailing, offers a luxurious yet modest look. Whether paired with accessories for a formal event or worn casually, this piece is a staple for every wardrobe.",

    "Each stitch of this kaftan abaya reflects artistry and precision, designed to flatter with its fluid silhouette. The delicate patterns along the edges elevate its elegance, making it perfect for special occasions. This abaya redefines modesty with a touch of artistic charm.",

    "This kaftan abaya is designed for the modern woman who values both comfort and elegance. The soft fabric flows gracefully, while the refined embellishments on the sleeves and hem add a touch of luxury. Its versatile design makes it suitable for any season and occasion.",

    "Experience the perfect combination of comfort and style with this modest kaftan abaya. Its lightweight fabric ensures breathability, while the classic cut and subtle detailing offer a refined look. It transitions seamlessly from casual daywear to elegant evening attire.",

    "This kaftan abaya is a harmonious blend of comfort and elegance. Its flowing silhouette drapes beautifully, offering a relaxed fit without compromising on style. The delicate embroidery and subtle color palette create a timeless look that suits any occasion.",

    "This kaftan abaya combines modern elegance with traditional charm. The intricate detailing along the neckline and cuffs adds a sophisticated touch, while the flowing fabric ensures comfort and modesty. It’s a versatile piece that complements any wardrobe.",

    "Simplicity is redefined with this kaftan abaya, offering a relaxed fit and subtle design that exudes elegance. The soft fabric and understated embellishments create a timeless look, perfect for both casual outings and formal events. This piece embodies effortless style.",

    "Classic Beauty with a Contemporary Twist: This kaftan abaya features classic lines and a contemporary twist, with its flowing design and intricate detailing. The breathable fabric ensures all-day comfort, while the subtle patterns add a hint of sophistication. A perfect choice for those who appreciate understated elegance.",

    "Fluid Lines, Endless Elegance: The flowing lines of this kaftan abaya create a sense of effortless grace. The delicate embroidery and soft fabric offer both comfort and style, making it an ideal choice for any occasion. This abaya is a testament to the beauty of modest fashion.",

    "Designed with attention to detail, this kaftan abaya offers understated luxury through its fine craftsmanship and elegant design. The relaxed fit and soft fabric ensure comfort, while the intricate patterns add a touch of sophistication. It’s perfect for any modest fashion enthusiast.",

    "This kaftan abaya is a masterpiece of modest elegance. The fluid silhouette, soft fabric, and intricate detailing create a harmonious blend of style and comfort. It’s perfect for any occasion where sophistication and modesty are key.",

    "Celebrate the beauty of modest fashion with this exquisite kaftan abaya. Its flowing design and subtle embellishments create a look that’s both timeless and contemporary. The lightweight fabric ensures comfort, making it ideal for any event.",

    "This kaftan abaya offers the perfect combination of chic style and everyday comfort. The relaxed fit and delicate detailing create a sophisticated look, while the soft fabric ensures all-day wearability. It’s a versatile piece that suits any occasion.",

    "Experience refined modesty with this kaftan abaya, designed to offer comfort and style in equal measure. The intricate patterns and flowing fabric create a look that’s both elegant and contemporary. It’s perfect for any modern woman seeking timeless fashion.",

    "This kaftan abaya embodies timeless elegance with its flowing silhouette and intricate detailing. The soft fabric drapes beautifully, offering comfort and style. It’s a versatile piece that can be dressed up or down, making it an essential addition to any wardrobe.",

    "This kaftan abaya is the epitome of modest chic, with its elegant design and relaxed fit. The delicate patterns and soft fabric create a look that’s both sophisticated and comfortable. It’s perfect for any occasion, from casual gatherings to formal events.",
  ];


  // Links corresponding to the images
  List<String> imageLinks = [
    Uri.encodeFull("https://twinkleland.pk/products/baggy-kaftan-abaya?srsltid=AfmBOoqU1NXQN6wtptUJhHjAxoEPsA1mZn4ICpXf1uUDGAuafvMDVQqe"),
    Uri.encodeFull("https://mahaghalayini.com/collections/abayas"),
    Uri.encodeFull("https://theundercoversisters.com/collections/kaftan-abayas"),
    Uri.encodeFull("https://www.mirraw.com/islamic-clothing/abaya?srsltid=AfmBOoqM-RCfJ00VxKuUTvGitUbMLoiZLw1KlmGtqeFIbCiSY4IkdErv"),
    Uri.encodeFull("https://twinkleland.pk/products/baggy-kaftan-abaya?srsltid=AfmBOoqU1NXQN6wtptUJhHjAxoEPsA1mZn4ICpXf1uUDGAuafvMDVQqe"),
    Uri.encodeFull("https://mahaghalayini.com/collections/abayas"),
    Uri.encodeFull("https://theundercoversisters.com/collections/kaftan-abayas"),
    Uri.encodeFull("https://www.mirraw.com/islamic-clothing/abaya?srsltid=AfmBOoqM-RCfJ00VxKuUTvGitUbMLoiZLw1KlmGtqeFIbCiSY4IkdErv"),
    Uri.encodeFull("https://twinkleland.pk/products/baggy-kaftan-abaya?srsltid=AfmBOoqU1NXQN6wtptUJhHjAxoEPsA1mZn4ICpXf1uUDGAuafvMDVQqe"),
    Uri.encodeFull("https://mahaghalayini.com/collections/abayas"),
    Uri.encodeFull("https://theundercoversisters.com/collections/kaftan-abayas"),
    Uri.encodeFull("https://www.mirraw.com/islamic-clothing/abaya?srsltid=AfmBOoqM-RCfJ00VxKuUTvGitUbMLoiZLw1KlmGtqeFIbCiSY4IkdErv"),
    Uri.encodeFull("https://twinkleland.pk/products/baggy-kaftan-abaya?srsltid=AfmBOoqU1NXQN6wtptUJhHjAxoEPsA1mZn4ICpXf1uUDGAuafvMDVQqe"),
    Uri.encodeFull("https://mahaghalayini.com/collections/abayas"),
    Uri.encodeFull("https://theundercoversisters.com/collections/kaftan-abayas"),
    Uri.encodeFull("https://www.mirraw.com/islamic-clothing/abaya?srsltid=AfmBOoqM-RCfJ00VxKuUTvGitUbMLoiZLw1KlmGtqeFIbCiSY4IkdErv"),
    Uri.encodeFull("https://twinkleland.pk/products/baggy-kaftan-abaya?srsltid=AfmBOoqU1NXQN6wtptUJhHjAxoEPsA1mZn4ICpXf1uUDGAuafvMDVQqe"),
    Uri.encodeFull("https://mahaghalayini.com/collections/abayas"),
    Uri.encodeFull("https://theundercoversisters.com/collections/kaftan-abayas"),
    Uri.encodeFull("https://www.mirraw.com/islamic-clothing/abaya?srsltid=AfmBOoqM-RCfJ00VxKuUTvGitUbMLoiZLw1KlmGtqeFIbCiSY4IkdErv"),

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
                image: AssetImage('assets/images/kaftan${widget.index + 1}.jpg'),
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
          imagePath: 'assets/images/kaftan${index + 1}.jpg',
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