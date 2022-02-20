import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

// A widget that displays a background image
// and onHover animates some text with a header
// and a description over the image
class ProjectShowcaseCard extends StatefulWidget {
  const ProjectShowcaseCard({ Key? key,
    required this.description,
    required this.title,
    required this.background }) 
    : super(key: key);

  final String description; // the description that is shown onHover
  final String title; // the headline that is shown onHover
  final Image background; // the background image (blurred onHover)

  @override
  createState() => _ProjectShowcaseCardState();
}

class _ProjectShowcaseCardState extends State<ProjectShowcaseCard> with TickerProviderStateMixin {
  static const _animationDuration = Duration(milliseconds: 800); // the duration of the onHover animation
  // the AnimationController for the text animation
  late final _textAnimationController = AnimationController(
    duration: _animationDuration,
    vsync: this,
  );
  // the animation controller for the blur animation
  late final _blurAnimationController = AnimationController(
    upperBound: 2.5, // how strong the blur is
    duration: _animationDuration,
    vsync: this,
  );

  @override
  void dispose() {
    // we need to dispose controllers (no idea why a garbage collected language needs this but whatever)
    _textAnimationController.dispose();
    _blurAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // get the global theme for some text styles

    return Card( // main widget
      elevation: 4, // how big the shadow under the card is
      child: InkWell( //for the on hover callback
        onTap: () {}, // needed for the hovering to work
        onHover: (isHovering) {
          // if the user hovers we start the text and blur animation
          if (isHovering) {
            _textAnimationController.forward();
            _blurAnimationController.forward();
          } else { // and make it go back if he un-hovers
            _textAnimationController.animateBack(0);
            _blurAnimationController.animateBack(0);
          }
        },
        child: Stack( // used to stack the text on top of the image
          alignment: AlignmentDirectional.center,
          children: [
            AnimatedBuilder( // image blur animation
              animation: _blurAnimationController,
              builder: (_, __) {
                return ClipRRect( // needed to not blur the whole screen
                  borderRadius: BorderRadius.circular(5),
                  child: Container( // the container containing the actual image
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: widget.background.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: BackdropFilter( // changes the blur onHover
                      filter: ImageFilter.blur(sigmaX: max(0.001, _blurAnimationController.value), sigmaY: max(0.001, _blurAnimationController.value)),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                      ),
                    ),
                  ),
                );
              },
            ),
            LayoutBuilder( // to get the constraints of the card
              builder: (_, constraints) {
                final biggest = constraints.biggest; // max constraints (width, height)
                return Stack(
                  children: [
                    PositionedTransition( // text position animation
                      rect: RelativeRectTween( // from-to animation
                        begin: RelativeRect.fromSize(
                          Rect.fromLTWH(0, biggest.height, biggest.width, biggest.height), // we start below the image
                          biggest,
                        ),
                        end: RelativeRect.fromSize( // and animate to the top
                          Rect.fromLTWH(0, 0, biggest.width, biggest.height),
                          biggest,
                          ),
                      ).animate(CurvedAnimation(
                        parent: _textAnimationController,
                        curve: Curves.decelerate,
                      )),
                      child: Padding( // the actual text
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(widget.title, style: theme.textTheme.headlineMedium),
                            Text(widget.description, style: theme.textTheme.bodyLarge),
                          ],
                        )
                      ),
                    )
                  ]
                );
              }
            ),
          ],
        )
      ),
    );
  }
}