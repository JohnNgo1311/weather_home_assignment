import 'package:flutter/material.dart';
import 'package:weather_app/domain/entities/daily_forecast_entity.dart';

import 'weather_app_theme.dart';

class CustomBottomSheet extends StatefulWidget {
  final List<DailyForecastEntity> items;

  const CustomBottomSheet({
    super.key,
    required this.items,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(microseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildItem(DailyForecastEntity item) {
    return Container(
      height: 96,
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Expanded(
              child: Text(item.getWeekdayFromTimestamp(),
                  style: WeatherAppTheme.theme.textTheme.bodyMedium)),
          Text('${item.temp?.setCelsiusTemp().toStringAsFixed(2) ?? 'N/A'}°C',
              style: WeatherAppTheme.theme.textTheme.bodyMedium)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            heightFactor: _animation.value,
            child: Material(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.separated(
                  itemCount: widget.items.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (_, i) => _buildItem(widget.items[i]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
