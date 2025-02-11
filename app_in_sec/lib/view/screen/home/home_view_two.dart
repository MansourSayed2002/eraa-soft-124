import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeViewTwo extends StatefulWidget {
  const HomeViewTwo({super.key});

  @override
  State<HomeViewTwo> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeViewTwo> with TickerProviderStateMixin {
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
              final angle = -math.pi / 2 * (1 - animatedcontroller.value);
              return Stack(
                children: [
                  const ContainerOne(),
                  Transform(
                      transform: Matrix4.identity()
                        ..translate(200 * (animatedcontroller.value - 1)),
                      alignment: Alignment.center,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(angle),
                        alignment: Alignment.centerRight,
                        child: const ContainerTwo(),
                      )),
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
      color: Colors.blue,
    );
  }
}
