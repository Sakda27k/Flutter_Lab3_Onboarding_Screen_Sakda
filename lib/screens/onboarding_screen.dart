import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,

                  itemCount: demo_data.length, // Specify the number of onboarding pages
                  itemBuilder: (context, index) => OnboardingWidget(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
        

              
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    primary: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoard {
  final String image, title, description;

  OnBoard ({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
    image: "lib/assets/image/GLC.jpg",
    title: "2023 Mercedes-Benz GLC", 
    description: "The 2023 GLC inserts the special Mercedes-Benz magic into the compact luxury crossover segment. The category is filled with excellent vehicles, but the GLC cuts through the masses with a solid base model, a high-performance AMG variant, and a coupe with its own sleek style. The five-passenger vehicle offers luxurious interior accommodations, innovative tech, and very good drivability. The entry-level GLC 300 will fit the bill for most buyers, but those who want to express themselves will find more emotion in the Mercedes-AMG GLC 43 and the Mercedes-Benz GLC Coupe. Ride comfort throughout the lineup is excellent, though the AMG version stiffens things up a bit. The GLC 300 is rear-wheel drive with all-wheel drive optional, while the AMG GLC 43 and GLC Coupe are all-wheel drive only."),
  OnBoard(
    image: "lib/assets/image/C63.jpg",
    title: "2023 Mercedes-Benz C63 Coupés", 
    description: "The C-Class Coupés from Mercedes-AMG stand for performance at the very highest level that can be seen and experienced. Their extreme dynamics can be recognized in every detail – the dominant design has been further sharpened and now presents itself in a manner more striking and expressive than ever."),
  OnBoard(
    image: "lib/assets/image/G63.png",
    title: "2022 Mercedes-Benz G63", 
    description: "The sheer power of the Mercedes-AMG G 63 hits you right away: the AMG-specific radiator grille, the 21-inch AMG 5-twin-spoke light-alloy wheels painted in titanium grey and the distinctive AMG Performance exhaust system."),
];


class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(image, height: 280),
          const SizedBox(height: 20),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}