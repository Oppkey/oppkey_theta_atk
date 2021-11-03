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
              // example of using syntax highlighting
              const ThetaSyntaxWindow(
                // fontSize: 22,
                flex: 5,
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StateButton(),
                    InfoButton(),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Z1GetOptionsButton(),
                    !mobile ? const Sc2GetOptionsButton() : Container(),
                  ],
                ),
              ),
              mobile
                  ? const Expanded(
                      flex: 1,
                      child: Sc2GetOptionsButton(),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
