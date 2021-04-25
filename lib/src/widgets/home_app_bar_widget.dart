import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<HomeCubit>();
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF239EA1),
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      brightness: Brightness.light,
      title: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(RouteGenerator.searchStore);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 25,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xFFE5E5E5).withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/search.svg'),
              SizedBox(width: 10),
              Text(allTranslations.text('search'),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () =>
              navigator.pushNamed(RouteGenerator.notificationScreen),
          icon: SvgPicture.asset(Images.iconBell),
        ),
        bloc.state.cartBadge == 0
            ? IconButton(
                onPressed: () => Navigator.of(context)
                    .pushNamed(RouteGenerator.cartScreen)
                    .then((value) => bloc.getUserAvailable()),
                icon: SvgPicture.asset('assets/svg/store.svg'))
            : Badge(
                position: BadgePosition.topStart(top: 7, start: 25),
                badgeContent: Text(
                  '${bloc.state.cartBadge}',
                  style: body1.copyWith(color: Colors.white, fontSize: 12),
                ),
                child: IconButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(RouteGenerator.cartScreen)
                        .then((value) => bloc.getUserAvailable()),
                    icon: SvgPicture.asset('assets/svg/store.svg')),
              ),
        IconButton(
          onPressed: () => navigator.pushNamed(RouteGenerator.languagesScreen),
          icon: SvgPicture.asset(
            Images.languageIcon,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
