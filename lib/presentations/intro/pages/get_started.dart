import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_color.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
      
            // background Image
            Container(
              padding: EdgeInsets.all(64.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImages.introBackground
                  )
                )
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.spotifyLogo
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Sagittis enim purus sed phasellus. Cursus ornare id '
                    'scelerisque aliquam.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColor.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16,),
                  BasicAppButton(
                    onPressed: () => {},
                    title: 'Get Started',
                  ),
                ],
              ),
            ),
      
            // Overlay
            Container(
              color: Colors.black.withAlpha(120),
            ),
      
          ],
        ),
      ),
    );
  }
} 
