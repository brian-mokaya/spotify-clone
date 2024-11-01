import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage(
                    AppImages.introBG,
                  )
              )
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                ),
                Container(
                  child: SvgPicture.asset(
                    AppVectors.logo
                  ),
                ),
                Spacer(),

                Text(
                  'Enjoy Listening To Music',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                      ),
                ),

                SizedBox(height: 21,),
                Text(
                  'Theres no need to worry about the complexities of installing Android Studio. I’ve discovered an effective method to simplify the process using USB debugging. By connecting your phone directly to your PC with a USB cable, you can streamline your development workflow. ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 13
                ),
                  textAlign: TextAlign.center,
                )
              ],

            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
