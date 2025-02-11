import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late AnimationController animatedcontroller;

  @override
  void initState() {
    animatedcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    super.initState();
  }

  @override
  void dispose() {
    animatedcontroller.dispose();
    super.dispose();
  }

  var canBeDragged = false;
  void toggle() => animatedcontroller.isDismissed
      ? animatedcontroller.forward()
      : animatedcontroller.reverse();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: onDragEnd,
        onHorizontalDragStart: onDargStart,
        onHorizontalDragUpdate: onDragUpdate,
        onTap: toggle,
        child: AnimatedBuilder(
            animation: animatedcontroller,
            builder: (context, child) {
              final scale = 1 - (animatedcontroller.value * 0.3);
              final slide = 200.0 * animatedcontroller.value;
              return Stack(
                children: [
                  const ContainerOne(),
                  Transform(
                    transform: Matrix4.identity()
                      ..translate(slide)
                      ..scale(scale),
                    alignment: Alignment.centerRight,
                    child: const ContainerTwo(),
                  ),
                ],
              );
            }),
      ),
    );
  }

  onDargStart(DragStartDetails details) {
    bool isDragOpen =
        animatedcontroller.isDismissed && details.globalPosition.dx < 100;
    bool isDragClose =
        animatedcontroller.isCompleted && details.globalPosition.dx > 300;
    canBeDragged = isDragOpen || isDragClose;
  }

  onDragUpdate(DragUpdateDetails details) {
    if (canBeDragged) {
      double dragPercent = details.primaryDelta! / 200;
      animatedcontroller.value += dragPercent;
    }
  }

  void onDragEnd(DragEndDetails details) {
    // if (animatedcontroller.isDismissed || animatedcontroller.isCompleted) {
    //   return;
    // }
    if (details.velocity.pixelsPerSecond.dx.abs() < 450) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;
      animatedcontroller.fling(velocity: visualVelocity);
    } else if (animatedcontroller.value < 0.5) {
      animatedcontroller.reverse();
    } else {
      animatedcontroller.forward();
    }
  }
}

class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
