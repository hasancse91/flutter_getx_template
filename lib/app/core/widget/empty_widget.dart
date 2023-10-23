import 'dart:math';
import 'package:flutter/material.dart';

import '/app/core/utils/utils.dart';
import '/app/core/widget/asset_image_view.dart';

/// {@tool snippet}
///
/// This example shows how to use [EmptyWidget]
///
///  ``` dart
/// EmptyWidget(
///   image: null,
///   title: 'No Notification',
///   subTitle: 'No  notification available yet',
///   titleTextStyle: TextStyle(
///     fontSize: 22,
///     color: Color(0xff9da9c7),
///     fontWeight: FontWeight.w500,
///   ),
///   subtitleTextStyle: TextStyle(
///     fontSize: 14,
///     color: Color(0xffabb8d6),
///   ),
/// )
/// ```
/// {@end-tool}
///

class EmptyWidget extends StatefulWidget {
  const EmptyWidget({
    this.title,
    this.subTitle,
    this.image,
    this.buttonTitle,
    this.buttonAction,
    this.subtitleTextStyle,
    this.titleTextStyle,
    this.buttonTextStyle,
    this.buttonStyle,
    this.hideBackgroundAnimation = false,
  });

  /// Display images from project assets
  final String? image; /*!*/

  /// Set text for subTitle
  final String? subTitle; /*!*/

  /// Set text style for subTitle
  final TextStyle? subtitleTextStyle; /*!*/

  /// Set text for title
  final String? title; /*!*/

  /// Text style for title
  final TextStyle? titleTextStyle; /*!*/

  /// Set text for button
  final String? buttonTitle; /*!*/

  /// Set action for button
  final VoidCallback? buttonAction; /*!*/

  /// Set text style for button
  final TextStyle? buttonTextStyle; /*!*/

  /// Set button style for button
  final ButtonStyle? buttonStyle; /*!*/

  /// Hides the background circular ball animation
  ///
  /// By default `false` value is set
  final bool? hideBackgroundAnimation;

  @override
  State<StatefulWidget> createState() => _EmptyListWidgetState();
}

class _EmptyListWidgetState extends State<EmptyWidget>
    with TickerProviderStateMixin {
  late AnimationController _backgroundController;

  late Animation _imageAnimation; /*!*/
  AnimationController? _imageController; /*!*/
  TextStyle? _subtitleTextStyle; /*!*/
  TextStyle? _titleTextStyle; /*!*/
  TextStyle? _buttonTextStyle; /*!*/
  ButtonStyle? _buttonStyle; /*!*/
  late AnimationController _widgetController;

  get image => null; /*!*/

  @override
  void dispose() {
    _backgroundController.dispose();
    _imageController!.dispose();
    _widgetController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _backgroundController = AnimationController(
        duration: const Duration(minutes: 1),
        vsync: this,
        lowerBound: 0,
        upperBound: 20)
      ..repeat();
    _widgetController = AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
        lowerBound: 0,
        upperBound: 1)
      ..forward();
    _imageController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
    _imageAnimation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _imageController!, curve: Curves.linear),
    );
    super.initState();
  }

  animationListner() {
    if (_imageController == null) {
      return;
    }
    if (_imageController!.isCompleted) {
      setState(() {
        _imageController!.reverse();
      });
    } else {
      setState(() {
        _imageController!.forward();
      });
    }
  }

  Widget _imageWidget() {
    return Expanded(
      flex: 3,
      child: AnimatedBuilder(
        animation: _imageAnimation,
        builder: (BuildContext context, Widget? child) {
          return Transform.translate(
            offset: Offset(
                0,
                sin(_imageAnimation.value > .9
                    ? 1 - _imageAnimation.value
                    : _imageAnimation.value)),
            child: child,
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: AssetImageView(
            fileName: widget.image!,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _imageBackground() {
    var bounds = WidgetUtil.getWidgetBounds(context);
    return Container(
      width: bounds.width * 0.95,
      height: bounds.width * 0.95,
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 0),
            color: Color(0xffe2e5ed),
          ),
          BoxShadow(
              blurRadius: 30,
              offset: Offset(20, 0),
              color: Color(0xffffffff),
              spreadRadius: -5),
        ],
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _shell({Widget? child}) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxHeight > constraints.maxWidth) {
        return SizedBox(
          height: constraints.maxWidth,
          width: constraints.maxWidth,
          child: child,
        );
      } else {
        return child!;
      }
    });
  }

  Widget _shellChild() {
    _titleTextStyle = widget.titleTextStyle ??
        Theme.of(context)
            .typography
            .dense
            .headline5!
            .copyWith(color: const Color(0xff9da9c7));
    _subtitleTextStyle = widget.subtitleTextStyle ??
        Theme.of(context)
            .typography
            .dense
            .bodyText1!
            .copyWith(color: const Color(0xffabb8d6));

    _buttonTextStyle = widget.buttonTextStyle ??
        Theme.of(context)
            .typography
            .dense
            .bodyText1!
            .copyWith(color: const Color(0xffabb8d6));

    _buttonStyle = widget.buttonStyle ??
        OutlinedButton.styleFrom(
            primary: const Color(0xffabb8d6),
            side: const BorderSide(
              color: Color(0xffabb8d6),
            ));

    bool anyImageProvided = widget.image == null;

    return FadeTransition(
      opacity: _widgetController,
      child: Container(
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              if (!widget.hideBackgroundAnimation!)
                RotationTransition(
                  child: _imageBackground(),
                  turns: _backgroundController,
                ),
              LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.maxWidth,
                  width: constraints.maxWidth - 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      anyImageProvided
                          ? const SizedBox()
                          : Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                      anyImageProvided ? const SizedBox() : _imageWidget(),
                      Column(
                        children: <Widget>[
                          _CustomText(
                            msg: widget.title,
                            style: _titleTextStyle,
                            context: context,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          _CustomText(
                            msg: widget.subTitle,
                            style: _subtitleTextStyle,
                            context: context,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,
                          ),
                          if (widget.buttonTitle != null)
                            const SizedBox(
                              height: 20,
                            ),
                          if (widget.buttonTitle != null)
                            OutlinedButton(
                              onPressed: widget.buttonAction,
                              child: _CustomText(
                                msg: widget.buttonTitle,
                                style: _buttonTextStyle,
                                context: context,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                              style: _buttonStyle,
                            )
                        ],
                      ),
                      anyImageProvided
                          ? const SizedBox()
                          : Expanded(
                              flex: 1,
                              child: Container(),
                            )
                    ],
                  ),
                );
              }),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _shell(child: _shellChild());
  }
}

class _CustomText extends StatefulWidget {
  const _CustomText({
    Key? key,
    this.msg,
    this.style,
    this.textAlign,
    this.overflow,
    this.context,
  }) : super(key: key);

  final BuildContext? context;
  final String? msg;
  final TextOverflow? overflow;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<_CustomText> {
  TextStyle? style;

  @override
  void initState() {
    style = widget.style;
    super.initState();
  }

  Widget customText() {
    if (widget.msg == null) {
      return Container();
    }
    if (widget.context != null && widget.style != null) {
      var font = widget.style!.fontSize == null
          ? Theme.of(context).textTheme.bodyText1!.fontSize!
          : widget.style!.fontSize!;
      style = widget.style!.copyWith(fontSize: font);
    }
    return Text(
      widget.msg!,
      style: widget.style,
      textAlign: widget.textAlign,
      overflow: widget.overflow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return customText();
  }
}
