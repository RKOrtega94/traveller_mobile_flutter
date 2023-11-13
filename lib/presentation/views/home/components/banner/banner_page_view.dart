import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/banner.dart';

class BannerPageView extends StatefulWidget {
  final List<BannerModel> banners;
  const BannerPageView({super.key, required this.banners});

  @override
  State<BannerPageView> createState() => _BannerPageViewState();
}

class _BannerPageViewState extends State<BannerPageView>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  late AnimationController _animationController;

  final PageController _controller = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  @override
  void initState() {
    /* // Dynamic animation change _currentPage
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
        _currentPage = _animationController.value.toInt();
        setState(() {});
      });

    // Auto change page
    Future.delayed(const Duration(seconds: 5), () {
      _animationController.repeat(reverse: true);
    });
 */
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int length = widget.banners.length;
    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
          itemCount: widget.banners.length,
          controller: _controller,
          onPageChanged: (index) {
            _currentPage = index;
            setState(() {});
          },
          itemBuilder: (context, index) => Image.asset(
            widget.banners[index].image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.from(
              List.generate(
                length,
                (index) => _buildDot(index),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDot(int index) {
    return Container(
      width: _currentPage == index ? 16 : 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(4),
        // add shadow effect
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
