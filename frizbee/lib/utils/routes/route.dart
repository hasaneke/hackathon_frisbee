import 'package:auto_route/auto_route.dart';
import 'package:frizbee/pages/comment_page.dart';
import 'package:frizbee/pages/entrance_page.dart';
import 'package:frizbee/pages/frizbee_detail_page.dart';
import 'package:frizbee/pages/frizbies_page.dart';
import 'package:frizbee/pages/home_page.dart';
import 'package:frizbee/pages/login_page.dart';
import 'package:frizbee/pages/profile_page.dart';
import 'package:frizbee/pages/request_page.dart';
import 'package:frizbee/pages/signup_page.dart';
import 'package:frizbee/pages/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: EntrancePage),
    AutoRoute(page: FrizbeeDetailPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignupPage),
    AutoRoute(page: ProfilePage),
    AutoRoute(page: HomePage),
    AutoRoute(page: FrisbiesPage),
    AutoRoute(page: CommentPage),
    AutoRoute(page: RequestPage)
  ],
)
class $AppRouter {}
