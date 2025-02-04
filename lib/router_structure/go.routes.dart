import 'package:e_commerce/view/cart_screen/cart_screen.dart';
import 'package:e_commerce/router_structure/error_screen.dart';
import 'package:e_commerce/view/auth/log_in.dart';
import 'package:e_commerce/view/auth/otp_screen/otp_screen.dart';
import 'package:e_commerce/view/auth/password_screen/password_screen.dart';
import 'package:e_commerce/view/auth/password_screen/passord_sub_screen/forget_password.dart';
import 'package:e_commerce/view/auth/password_screen/passord_sub_screen/phone_verification.dart';
import 'package:e_commerce/view/auth/password_screen/passord_sub_screen/reset_password.dart';
import 'package:e_commerce/view/auth/password_screen/passord_sub_screen/sms_recover_password.dart';
import 'package:e_commerce/view/auth/sign_up.dart';
import 'package:e_commerce/view/category_screen/category_screen.dart';
import 'package:e_commerce/view/chat_screen/chat_screen.dart';
import 'package:e_commerce/view/hello_card/hello_card_screen.dart';
import 'package:e_commerce/view/flash_sale_screen/flash_sale_screen.dart';
import 'package:e_commerce/view/home_screen/home_sub_screen/default_search_screen.dart';

import 'package:e_commerce/view/navbar_screen/navbar_screen.dart';
import 'package:e_commerce/view/payment_screen/payment_screen.dart';
import 'package:e_commerce/view/profile_screen/profile_screen.dart';
import 'package:e_commerce/view/home_screen/home_screen.dart';
import 'package:e_commerce/view/home_screen/home_sub_screen/home_search_screen.dart';
import 'package:e_commerce/view/profile_screen/profile_sub_screens/my_activity_screen.dart';
import 'package:e_commerce/view/profile_screen/profile_sub_screens/order_history.dart';
import 'package:e_commerce/view/profile_screen/profile_sub_screens/to_recieve.dart';
import 'package:e_commerce/view/profile_screen/profile_sub_screens/to_track_order.dart';
import 'package:e_commerce/view/profile_screen/profile_sub_screens/voucher_screen.dart';
import 'package:e_commerce/view/settings_screens/settings_screens.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/currency_setting_screen.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/language_setting_screen.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/payment_methods_settigs.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/profile_settongs.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/shipping_address_setting.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/size_setting_screen.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/terms_&_conditions.dart';
import 'package:e_commerce/view/wellcome_screen/wellcome_screen.dart';
import 'package:e_commerce/view/wish_list_screen/sub_screen/recently_view_screen.dart';
import 'package:e_commerce/view/wish_list_screen/wish_list.dart';
import 'package:e_commerce/view/settings_screens/setting_sub_screen/country_search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/product_card_screen/product_card_screen.dart';

class RouteName {
  static const wellcomeScreen = 'WellcomeScreen';
  static const signUpScreen = 'signUpScreen';
  static const logInScreen = 'logInScreen';
  static const passwordScreen = 'passwordScreen';
  static const forgetPasswordScreen = 'forgetPasswordScreen';
  static const smsRecoverPassword = 'smsRecoverPassword';
  static const resetPasswordScreen = 'resetPasswordScreen';
  static const hellowCardScreen = 'hellowCardScreen';
  static const navabrScreen = 'navabrScreen';
  static const flashSaleScreen = 'flashSaleScreen';
  static const profileScreen = 'profileScreen';
  static const phoneVerification = 'phoneVerification';
  static const otpScreen = 'otpScreen';
  static const wishLsitScreen = 'wishListScreen';
  static const recentllyViewedScreen = 'recentlyViewedScreen';
  static const paymentScreen = 'paymentScreen';
  static const homeSearchScreen = 'homeSearchScreen';
  static const defaultSearchScreen = 'defaultSearchScreen';
  static const cartScreen = 'cartScreen';
  static const homeScreen = 'homeScreen';
  static const toRecieveScreen = 'toRecieveScreen';
  static const toTrackOrderScreen = 'toTrackOrderScreen';
  static const myActivityScreen = 'myActivityScreen';
  static const orderHistoryScreen = 'orderHistoryScreen';
  static const voucherScreen = 'voucherScreen';
  static const settingsScreen = 'settingScreen';
  static const profileSettings = 'profileSettings';
  static const paymentMethodSettingScreen = 'paymentMethodSettingScreen';
  static const shippingAddressSettingScreen = 'shuppingAddressSettingScreen';
  static const countryListScreen = 'countryListScreen';
  static const currencySettingScreen = 'currencySettingScreen';
  static const languageSettingScreen = 'languageSettingScreen';
  static const sizeSettingScreen = 'sizeSettingScreen';
  static const termsAndConditionScreen = 'termsAndConditionScreen';
  static const chatScreen = 'chatScreen';
  static const categoryScreen = 'categoryScreen';
  static const productCardScreen = 'productCardScreen';

  GoRouter myRouter = GoRouter(
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorScreen());
      },
      routes: [
        GoRoute(
          path: "/",
          name: wellcomeScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: WellcomeScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$signUpScreen",
          name: signUpScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SignUpScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$logInScreen",
          name: logInScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LoginScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$passwordScreen",
          name: passwordScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: PasswordScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$forgetPasswordScreen",
          name: forgetPasswordScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ForgetPasswordScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$smsRecoverPassword",
          name: smsRecoverPassword,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SmsRecoverPassword(),
            );
          },
        ),
        GoRoute(
          path: "/$resetPasswordScreen",
          name: resetPasswordScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ResetPasswordScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$hellowCardScreen",
          name: hellowCardScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HelloCardScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$navabrScreen",
          name: navabrScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: NavbarScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$flashSaleScreen",
          name: flashSaleScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: FlashSaleScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$profileScreen",
          name: profileScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ProfileScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$phoneVerification/:hintText",
          name: phoneVerification,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: PhoneVerification(
                hintText: state.pathParameters["hintText"] ?? "",
              ),
            );
          },
        ),
        GoRoute(
          path: "/$otpScreen",
          name: otpScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: OtPScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$wishLsitScreen",
          name: wishLsitScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: WishListScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$recentllyViewedScreen",
          name: recentllyViewedScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: RecentlyviewScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$cartScreen",
          name: cartScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: CartScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$paymentScreen",
          name: paymentScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: PaymentScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$homeScreen",
          name: homeScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HomeScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$homeSearchScreen",
          name: homeSearchScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HomeSearchScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$defaultSearchScreen",
          name: defaultSearchScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: DefaultSearchScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$toRecieveScreen",
          name: toRecieveScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ToRecievedScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$toTrackOrderScreen",
          name: toTrackOrderScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ToTrackOrderScreen(),
            );
          },
        ),
        GoRoute(
          path: "/$myActivityScreen",
          name: myActivityScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: MyActivityScreen());
          },
        ),
        GoRoute(
          path: "/$orderHistoryScreen/:profileImg",
          name: orderHistoryScreen,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: OrderHistoryScreen(
                  profileImg: state.pathParameters["profileImg"] ?? ""),
            );
          },
        ),
        GoRoute(
          path: "/$voucherScreen/:profileImg",
          name: voucherScreen,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: VoucherScreen(
                  profileImg: state.pathParameters["profileImg"] ?? ""),
            );
          },
        ),
        GoRoute(
          path: "/$productCardScreen/:networkImageUrl/:price",
          name: productCardScreen,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: ProductCardScreen(
                networkImageUrl: state.pathParameters['networkImageUrl'] ?? "",
                price: state.pathParameters['price'] ?? "",
                // profileImg: state.pathParameters["profileImg"] ?? ""
              ),
            );
          },
        ),
        GoRoute(
          path: "/$settingsScreen",
          name: settingsScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SettingsScreens());
          },
        ),
        GoRoute(
          path: "/$profileSettings",
          name: profileSettings,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ProfileSettings());
          },
        ),
        GoRoute(
          path: "/$paymentMethodSettingScreen",
          name: paymentMethodSettingScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: PaymentMethodSettingScreen());
          },
        ),
        GoRoute(
          path: "/$shippingAddressSettingScreen",
          name: shippingAddressSettingScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ShippingAddressSettingScreen());
          },
        ),
        GoRoute(
          path: "/$countryListScreen",
          name: countryListScreen,
          pageBuilder: (context, state) {
            return MaterialPage(child: CountryListScreen());
          },
        ),
        GoRoute(
          path: "/$currencySettingScreen",
          name: currencySettingScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: CurrencySettingScreen());
          },
        ),
        GoRoute(
          path: "/$languageSettingScreen",
          name: languageSettingScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: LanguageSettingScreen());
          },
        ),
        GoRoute(
          path: "/$sizeSettingScreen",
          name: sizeSettingScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SizeSettingScreen());
          },
        ),
        GoRoute(
          path: "/$termsAndConditionScreen",
          name: termsAndConditionScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: TermsAndConditions());
          },
        ),
        GoRoute(
          path: "/$chatScreen",
          name: chatScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ChatScreen());
          },
        ),
        GoRoute(
          path: "/$categoryScreen",
          name: categoryScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: CategoryScreen());
          },
        ),
      ]);
}
