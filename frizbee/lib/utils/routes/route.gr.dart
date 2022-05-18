// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../data/models/frisbee.dart' as _i13;
import '../../pages/comment_page.dart' as _i9;
import '../../pages/entrance_page.dart' as _i2;
import '../../pages/frizbee_detail_page.dart' as _i3;
import '../../pages/frizbies_page.dart' as _i8;
import '../../pages/home_page.dart' as _i7;
import '../../pages/login_page.dart' as _i4;
import '../../pages/profile_page.dart' as _i6;
import '../../pages/request_page.dart' as _i10;
import '../../pages/signup_page.dart' as _i5;
import '../../pages/splash_page.dart' as _i1;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    EntranceRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EntrancePage());
    },
    FrizbeeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FrizbeeDetailRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.FrizbeeDetailPage(frisbee: args.frisbee));
    },
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    SignupRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignupPage());
    },
    ProfileRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    FrisbiesRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FrisbiesPage());
    },
    CommentRoute.name: (routeData) {
      final args = routeData.argsAs<CommentRouteArgs>(
          orElse: () => const CommentRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.CommentPage(key: args.key));
    },
    RequestRoute.name: (routeData) {
      final args = routeData.argsAs<RequestRouteArgs>(
          orElse: () => const RequestRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.RequestPage(key: args.key));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashRoute.name, path: '/'),
        _i11.RouteConfig(EntranceRoute.name, path: '/entrance-page'),
        _i11.RouteConfig(FrizbeeDetailRoute.name, path: '/frizbee-detail-page'),
        _i11.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i11.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i11.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i11.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i11.RouteConfig(FrisbiesRoute.name, path: '/frisbies-page'),
        _i11.RouteConfig(CommentRoute.name, path: '/comment-page'),
        _i11.RouteConfig(RequestRoute.name, path: '/request-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.EntrancePage]
class EntranceRoute extends _i11.PageRouteInfo<void> {
  const EntranceRoute() : super(EntranceRoute.name, path: '/entrance-page');

  static const String name = 'EntranceRoute';
}

/// generated route for
/// [_i3.FrizbeeDetailPage]
class FrizbeeDetailRoute extends _i11.PageRouteInfo<FrizbeeDetailRouteArgs> {
  FrizbeeDetailRoute({required _i13.Frisbee frisbee})
      : super(FrizbeeDetailRoute.name,
            path: '/frizbee-detail-page',
            args: FrizbeeDetailRouteArgs(frisbee: frisbee));

  static const String name = 'FrizbeeDetailRoute';
}

class FrizbeeDetailRouteArgs {
  const FrizbeeDetailRouteArgs({required this.frisbee});

  final _i13.Frisbee frisbee;

  @override
  String toString() {
    return 'FrizbeeDetailRouteArgs{frisbee: $frisbee}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i11.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup-page');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.FrisbiesPage]
class FrisbiesRoute extends _i11.PageRouteInfo<void> {
  const FrisbiesRoute() : super(FrisbiesRoute.name, path: '/frisbies-page');

  static const String name = 'FrisbiesRoute';
}

/// generated route for
/// [_i9.CommentPage]
class CommentRoute extends _i11.PageRouteInfo<CommentRouteArgs> {
  CommentRoute({_i12.Key? key})
      : super(CommentRoute.name,
            path: '/comment-page', args: CommentRouteArgs(key: key));

  static const String name = 'CommentRoute';
}

class CommentRouteArgs {
  const CommentRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'CommentRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.RequestPage]
class RequestRoute extends _i11.PageRouteInfo<RequestRouteArgs> {
  RequestRoute({_i12.Key? key})
      : super(RequestRoute.name,
            path: '/request-page', args: RequestRouteArgs(key: key));

  static const String name = 'RequestRoute';
}

class RequestRouteArgs {
  const RequestRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'RequestRouteArgs{key: $key}';
  }
}
