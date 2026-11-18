import 'package:flutter/material.dart';
import 'package:homebook/styles/homebook_colors.dart';

class HomeBookSegmentedButtons extends StatelessWidget {
  const HomeBookSegmentedButtons({
    required this.segments,
    required this.onChange,
    required this.selected,
    super.key,
  });

  final List<String> segments;
  final void Function(String) onChange;
  final String selected;

  @override
  Widget build(BuildContext context) {
    final colors = context.homeBookColors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.glass,
        borderRadius: BorderRadius.circular(100),
        shape: BoxShape.rectangle,
        border: Border.all(color: colors.glassBorder, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          spacing: 0,
          children: segments.map((segment) {
            final isSelected = segment == selected;

            return isSelected
                ? SelectedSegmentedButton(segment: segment, onSelect: () => onChange(segment))
                : DefaultSegmentedButton(segment: segment, onSelect: () => onChange(segment));
          }).toList(),
        ),
      ),
    );
  }
}

class SelectedSegmentedButton extends StatelessWidget {
  const SelectedSegmentedButton({required this.segment, required this.onSelect, super.key});

  final String segment;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final colors = context.homeBookColors;

    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0D5A3520),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Color(0x265A3520),
            offset: Offset(0, 8),
            blurRadius: 24,
            spreadRadius: -8,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(0),
          shape: const WidgetStatePropertyAll(StadiumBorder()),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          side: WidgetStatePropertyAll(
            BorderSide(color: colors.glassBorder, width: 1),
          ),
          backgroundColor: WidgetStatePropertyAll(colors.glassStrong),
          foregroundColor: WidgetStatePropertyAll(colors.ink),
          textStyle: const WidgetStatePropertyAll(
            TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ),
        child: Text(segment),
      ),
    );
  }
}

class DefaultSegmentedButton extends StatelessWidget {
  const DefaultSegmentedButton({required this.segment, required this.onSelect, super.key});

  final String segment;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final colors = context.homeBookColors;

    return ElevatedButton(
      onPressed: onSelect,
      style: ButtonStyle(
        side: WidgetStatePropertyAll<BorderSide>(
          BorderSide(color: colors.glassBorder, width: 1),
        ),
        shape: WidgetStatePropertyAll<CircleBorder>(CircleBorder()),
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.transparent),
        shadowColor: WidgetStatePropertyAll<Color>(Colors.transparent),
      ),
      child: Text(
        segment,
        style: TextStyle(
          color: colors.inkMuted,
          fontSize: 13,
          fontWeight: FontWeight(600),
        ),
      ),
    );
  }
}
