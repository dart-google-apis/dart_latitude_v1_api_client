library latitude_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_latitude_v1_api/src/cloud_api_browser.dart';
import "package:google_latitude_v1_api/latitude_v1_api_client.dart";

/** Lets you read and update your current location and work with your location history */
class Latitude extends Client with BrowserClient {

  /** OAuth Scope2: Manage your best-available location and location history */
  static const String LATITUDE_ALL_BEST_SCOPE = "https://www.googleapis.com/auth/latitude.all.best";

  /** OAuth Scope2: Manage your city-level location and location history */
  static const String LATITUDE_ALL_CITY_SCOPE = "https://www.googleapis.com/auth/latitude.all.city";

  /** OAuth Scope2: Manage your best-available location */
  static const String LATITUDE_CURRENT_BEST_SCOPE = "https://www.googleapis.com/auth/latitude.current.best";

  /** OAuth Scope2: Manage your city-level location */
  static const String LATITUDE_CURRENT_CITY_SCOPE = "https://www.googleapis.com/auth/latitude.current.city";

  final oauth.OAuth2 auth;

  Latitude([oauth.OAuth2 this.auth]);
}
