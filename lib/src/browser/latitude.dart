part of latitude_v1_api_browser;

/** Client to access the latitude v1 API */
/** Lets you read and update your current location and work with your location history */
class Latitude extends BrowserClient {

  CurrentLocationResource _currentLocation;
  CurrentLocationResource get currentLocation => _currentLocation;
  LocationResource _location;
  LocationResource get location => _location;

  /** OAuth Scope2: Manage your best-available location and location history */
  static const String LATITUDE_ALL_BEST_SCOPE = "https://www.googleapis.com/auth/latitude.all.best";

  /** OAuth Scope2: Manage your city-level location and location history */
  static const String LATITUDE_ALL_CITY_SCOPE = "https://www.googleapis.com/auth/latitude.all.city";

  /** OAuth Scope2: Manage your best-available location */
  static const String LATITUDE_CURRENT_BEST_SCOPE = "https://www.googleapis.com/auth/latitude.current.best";

  /** OAuth Scope2: Manage your city-level location */
  static const String LATITUDE_CURRENT_CITY_SCOPE = "https://www.googleapis.com/auth/latitude.current.city";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Latitude([OAuth2 auth]) : super(auth) {
    basePath = "/latitude/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _currentLocation = new CurrentLocationResource(this);
    _location = new LocationResource(this);
  }
}
