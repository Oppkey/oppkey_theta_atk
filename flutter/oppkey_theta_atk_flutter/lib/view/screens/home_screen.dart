import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/view/component/home_screen_drawer.dart';
import 'package:thetaf/thetaf.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = window.physicalSize.width;
    bool mobile = width < 1200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Oppkey THETA ATK Flutter'),
      ),
      drawer: const HomeScreenDrawer(),
      body: ThetaWindow(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              /// example of using syntax highlighting

              const ThetaSyntaxWindow(
                // fontSize: 22,
                flex: 5,
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StateButton(
                      fontSize: 32,
                      backgroundColor: Colors.lightGreen,
                      textColor: Colors.white,
                    ),
                    InfoButton(
                      fontSize: 32,
                      backgroundColor: Color(0xffFFB74D),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Z1GetOptionsButton(
                      fontSize: 32,
                      backgroundColor: Color(0xFF9575CD),
                      textColor: Colors.white,
                    ),
                    !mobile
                        ? const Sc2GetOptionsButton(
                            backgroundColor: Color(0xffA1887F),
                            textColor: Colors.white,
                            fontSize: 32,
                          )
                        : Container(),
                  ],
                ),
              ),
              mobile
                  ? const Expanded(
                      flex: 1,
                      child: Sc2GetOptionsButton(
                        backgroundColor: Color(0xffA1887F),
                        textColor: Colors.white,
                        fontSize: 32,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
