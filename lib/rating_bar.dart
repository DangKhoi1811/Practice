import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final void Function(int index) onChanged;
  final int value;
  final IconData filledStar;
  final IconData unfilledStar;
  final double size;
  final Color color;
  final int marginFactor;

  const StarRating({
    Key key,
    @required this.onChanged,
    this.value = 0,
    this.filledStar,
    this.unfilledStar,
    this.color = Colors.amber,
    this.size = 16,
    this.marginFactor = 5,
  })  : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: List.generate(5, (index) {
          return RawMaterialButton(
            child: Icon(
              index < value
                  ? filledStar ?? Icons.star
                  : unfilledStar ?? Icons.star_border,
              color: color,
              size: size,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 2,
            shape: CircleBorder(),
            constraints: BoxConstraints.expand(
                width: size - size / marginFactor + 5, height: size+5),
            padding: EdgeInsets.zero,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: onChanged != null
                ? () {
              onChanged(value == index + 1 ? index : index + 1);
            }
                : null,
          );
        }),
      ),
    );
  }
}
