import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/languages/cubit/cubit/languages_cubit.dart';

class LanguagesScreen extends CubitWidget<LanguagesCubit, LanguagesState> {
  static BlocProvider<LanguagesCubit> provider() {
    return BlocProvider<LanguagesCubit>(
      create: (_) => LanguagesCubit(),
      child: LanguagesScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
  }

  @override
  void listener(BuildContext context, LanguagesState state) {
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, LanguagesState state) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView.separated(
        itemBuilder: (_, index) => _itemWidget(index),
        separatorBuilder: (_, index) => Divider(
          height: 1.0,
        ),
        itemCount: supportedLocales.length,
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        'languages'.tr,
        style: TextStyle(
          color: whiteColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          navigator.pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: whiteColor,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _itemWidget(int index) {
    final _locale = supportedLocales[index];
    final _isSelected = Get.locale.languageCode == _locale.languageCode;
    String imgFlag = Images.vnFlag;
    switch (_locale.languageCode) {
      case 'vn':
        imgFlag = Images.vnFlag;
        break;
      case 'en':
        imgFlag = Images.enFlag;
        break;
      case 'af':
        imgFlag = Images.afFlag;
        break;
      case 'ar':
        imgFlag = Images.arbFlag;
        break;
      case 'bn':
        imgFlag = Images.bangalFlag;
        break;
      case 'ca':
        imgFlag = Images.catalaFlag;
        break;
      case 'cn':
        imgFlag = Images.cnFlag;
        break;
      case 'de':
        imgFlag = Images.gerFlag;
        break;
      case 'es':
        imgFlag = Images.spanishFlag;
        break;
      case 'fil':
        imgFlag = Images.filipinoFlag;
        break;
      case 'fr':
        imgFlag = Images.frFlag;
        break;
      case 'hi':
        imgFlag = Images.hindiFlag;
        break;
      case 'id':
        imgFlag = Images.indoFlag;
        break;
      case 'it':
        imgFlag = Images.itFlag;
        break;
      case 'ja':
        imgFlag = Images.japanFlag;
        break;
      case 'ms':
        imgFlag = Images.malayFlag;
        break;
      case 'pt':
        imgFlag = Images.portuFlag;
        break;
      case 'ru':
        imgFlag = Images.russianFlag;
        break;
    }

    return InkWell(
      onTap: () => bloc.onSelectLocale(_locale),
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Container(
              width: 50,
              child: Center(
                child: _isSelected
                    ? FaIcon(
                        FontAwesomeIcons.check,
                        color: primaryColor,
                      )
                    : SizedBox.shrink(),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: imgFlag.loadImage(size: 40),
            ),
            Expanded(
              child: Text(
                _locale.languageCode.tr,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
