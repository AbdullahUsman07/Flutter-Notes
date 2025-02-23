
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Animated Text'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:Center(  
        // child:Row(  
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Text('Be', style:TextStyle(fontSize: 40),),
        //     const SizedBox(width: 20,),
        //     DefaultTextStyle(style: TextStyle(fontSize: 40,fontFamily: 'Horizon'), 
        //     child: AnimatedTextKit(animatedTexts: [
        //       RotateAnimatedText('Awesome'),
        //       RotateAnimatedText('Optimistic'),
        //       RotateAnimatedText('Fun'),
        //     ],
        //     stopPauseOnTap: true,
        //     totalRepeatCount: 6,
        //     pause: const Duration(milliseconds: 200),
        //     )),
        //   ],
        // ),


        child:Row(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Be', style:TextStyle(fontSize: 40),),
            const SizedBox(width: 20,),
            DefaultTextStyle(style: TextStyle(fontSize: 40,fontFamily: 'Horizon'), 
            child: AnimatedTextKit(animatedTexts: [
              FadeAnimatedText('Awesome'),
              FadeAnimatedText('Billa'),
              FadeAnimatedText('Chill'),
            ],
            stopPauseOnTap: true,
            totalRepeatCount: 6,
            pause: const Duration(milliseconds: 200),
            )),
          ],
        ),

        // Explore other options as well 

        
      )
    );
  }
}