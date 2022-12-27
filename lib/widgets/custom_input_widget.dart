import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/controllers/movie_controller.dart';

class CustomInputWidget extends StatefulWidget {
  final double? padding;
  final String iconPath;
  final MovieController controller;

  const CustomInputWidget(
      {Key? key,
      this.padding = 8,
      required this.iconPath,
      required this.controller})
      : super(key: key);

  @override
  State<CustomInputWidget> createState() => _CustomInputWidgetState();
}

class _CustomInputWidgetState extends State<CustomInputWidget>
    with TickerProviderStateMixin {
  late AnimationController _settingController;

  @override
  void initState() {
    super.initState();

    _settingController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _settingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.padding!),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.withOpacity(0.05),
            Colors.grey.withOpacity(0.15),
            Colors.grey.withOpacity(0.05),
          ],
          stops: const [0, 7, 1],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                _settingController.reset();
                _settingController.forward();
                widget.controller.onChanged(value);
              },
              decoration: InputDecoration(
                prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Lottie.asset(
                    widget.iconPath,
                    controller: _settingController,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                fillColor: Colors.white30,
                focusColor: Colors.white30,
                hoverColor: Colors.white30,
              ),
              cursorColor: Colors.white30,
            ),
          ),
        ],
      ),
    );
  }
}
