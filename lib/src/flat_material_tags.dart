import 'package:flutter/material.dart';

class FlatMaterialTags extends StatelessWidget {
  FlatMaterialTags({
    Key key,
    this.leftArea,
    this.rightArea,
    this.leftAreaColor = Colors.blueGrey,
    this.rightAreaColor = Colors.white,
    this.borderColor = Colors.black,
    this.borderWidth = 1,
    this.radiusTopLeft = 0.0,
    this.radiusBottomLeft = 0.0,
    this.radiusTopRight = 0.0,
    this.radiusBottomRight = 0.0,
    this.tagHeight = 30,
    this.leftAreaPadding = 8,
    this.rightAreaPadding = 8,
    this.onPressedLeft,
    this.onPressedRight,
    this.splashColorLeft,
    this.splashColorRight,
    this.highlightColorLeft,
    this.highlightColorRight,
  }) : super(key: key);

  // Set the widget on the left
  final Widget leftArea;
  // Set the widget on the right
  final Widget rightArea;
  // Set the background color on the left side
  final Color leftAreaColor;
  // Set the background color on the right side
  final Color rightAreaColor;
  // Set the tag border color
  final Color borderColor;
  // Set the width of the tag border
  final double borderWidth;
  // Set the upper left radius of the tag
  final double radiusTopLeft;
  // Set the lower left radius of the tag
  final double radiusBottomLeft;
  // Set the upper right radius of the tag
  final double radiusTopRight;
  // Set the lower right radius of the tag
  final double radiusBottomRight;
  // Set tag height
  final double tagHeight;
  // Set padding for widgets on the left
  final double rightAreaPadding;
  // Set padding for widgets on the right
  final double leftAreaPadding;
  // Set the operation when the left button is pressed
  final VoidCallback onPressedLeft;
  // Set the operation when the right button is pressed
  final VoidCallback onPressedRight;
  // Sets the color of the effect when the left side is pressed. If not set, the effect will be turned off.
  final Color splashColorLeft;
  // Sets the color of the effect when the right side is pressed. If not set, the effect will be turned off.
  final Color splashColorRight;
  //Set the highlight color when pressing the left side
  final Color highlightColorLeft;
  //Set the highlight color when pressing the right side
  final Color highlightColorRight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(),
      child: ButtonTheme(
        minWidth: 10,
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: tagHeight,
              child: FlatButton(
                child: leftArea == null ? Text('leftArea') : leftArea,
                splashColor: splashColorLeft == null
                    ? Colors.transparent
                    : splashColorLeft,
                highlightColor: highlightColorLeft == null
                    ? Colors.transparent
                    : highlightColorLeft,
                padding: EdgeInsets.fromLTRB(
                  leftAreaPadding,
                  0,
                  leftAreaPadding,
                  0,
                ),
                color: leftAreaColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radiusTopLeft),
                    bottomLeft: Radius.circular(radiusBottomLeft),
                  ),
                  side: BorderSide(
                    color: borderColor,
                    width: borderWidth,
                  ),
                ),
                onPressed: () {
                  //onPressed();
                  if (onPressedLeft != null) {
                    onPressedLeft();
                  }
                },
              ),
            ),
            SizedBox(
              height: tagHeight,
              child: FlatButton(
                child: rightArea == null ? Text('rightArea') : rightArea,
                splashColor: splashColorRight == null
                    ? Colors.transparent
                    : splashColorRight,
                highlightColor: highlightColorRight == null
                    ? Colors.transparent
                    : highlightColorRight,
                padding: EdgeInsets.fromLTRB(
                  rightAreaPadding,
                  0,
                  rightAreaPadding,
                  0,
                ),
                color: rightAreaColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(radiusTopRight),
                    bottomRight: Radius.circular(radiusBottomRight),
                  ),
                  side: BorderSide(
                    color: borderColor,
                    width: borderWidth,
                  ),
                ),
                onPressed: () {
                  //onPressed();
                  if (onPressedRight != null) {
                    onPressedRight();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
