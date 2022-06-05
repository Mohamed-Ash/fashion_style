// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar_item.dart';
import 'package:flutter/material.dart';

class SalomonBottomBar extends StatelessWidget {
  final List<SalomonBottomBarItem> items;

  final int currentIndex;

  final Function(int)? onTap;

  final Color? selectedItemColor;

  final Color? unselectedItemColor;

  final double? selectedColorOpacity;

  final ShapeBorder itemShape;

  final EdgeInsets margin;

  final EdgeInsets itemPadding;

  final Duration duration;

  final Curve curve;
  
  final Shadow? doubleShadow;

   SalomonBottomBar({
      Key? key, 
      required this.items, 
      this.currentIndex = 0 , 
      this.onTap, 
      this.selectedItemColor,  
      this.unselectedItemColor, 
      this.selectedColorOpacity, 
      this.itemShape = const  StadiumBorder(), 
      this.margin = const EdgeInsets.symmetric(vertical: 3), 
      this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16), 
      this.duration = const Duration(milliseconds: 350), 
      this.curve = Curves.easeOutQuint,
      this.doubleShadow
    }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      // padding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: SafeArea(
        minimum: margin,
        child: Row(
         /*  mainAxisAlignment: items.length <= 2
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.spaceBetween, */
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (final item in items)
              TweenAnimationBuilder<double>(
                tween: Tween(
                  end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
                ),
               curve: curve,
                duration: duration,
                builder: (context, t, _) {
                  final _selectedColor = item.selectedColor ??
                    selectedItemColor ??
                    theme.primaryColor;

                  final _unselectedColor = item.unselectedColor ??
                    unselectedItemColor ??
                    theme.iconTheme.color;
                  return Material(
                    color: Color.lerp(
                      _selectedColor.withOpacity(0.0),
                      _selectedColor.withOpacity(selectedColorOpacity ?? 0.1),
                      t
                    ),
                    shape: itemShape,
                    child: InkWell(
                      onTap: () => onTap?.call(items.indexOf(item)),
                      customBorder: itemShape,
                      focusColor: _selectedColor.withOpacity(0.1),
                      highlightColor: _selectedColor.withOpacity(0.1),
                      splashColor: _selectedColor.withOpacity(0.1),
                      hoverColor: _selectedColor.withOpacity(0.1),
                      child: Padding(
                        padding: itemPadding - (
                          Directionality.of(context) == TextDirection.ltr
                            ? EdgeInsets.only(right: itemPadding.right * t)
                            : EdgeInsets.only(left: itemPadding.left * t)
                        ),
                        child: Row(
                          children: [
                            IconTheme(
                              data: IconThemeData(
                                color: Color.lerp(
                                  _unselectedColor, _selectedColor, t),
                                size: 24,
                              ),
                              child: items.indexOf(item) == currentIndex
                                ? item.activeIcon ?? item.icon
                                : item.icon,
                            ),
                            ClipRect(
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                height: 20,
                                child: Align(
                                  alignment: const Alignment(-0.2, 0.0),
                                  widthFactor: t,
                                  child: Padding(
                                    padding: Directionality.of(context) ==
                                      TextDirection.ltr ? EdgeInsets.only(
                                        left: itemPadding.left / 2,
                                        right: itemPadding.right
                                      ) : EdgeInsets.only(
                                        left: itemPadding.left,
                                        right: itemPadding.right / 2
                                      ),
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: Color.lerp(
                                          _selectedColor.withOpacity(0.0),
                                          _selectedColor,t
                                        ),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      child: item.title,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}