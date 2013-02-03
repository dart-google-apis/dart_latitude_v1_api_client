part of latitude_v1_api_client;

class CurrentLocationResource extends Resource {

  CurrentLocationResource(Client client) : super(client) {
  }

  /**
   * Deletes the authenticated user's current location.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete({Map optParams}) {
    var completer = new Completer();
    var url = "currentLocation";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the authenticated user's current location.
   *
   * [granularity] - Granularity of the requested location.
   *   Default: city
   *   Allowed values:
   *     best - Request best available granularity.
   *     city - Request city-level granularty.
   *
   * [optParams] - Additional query parameters
   */
  Future<LatitudeCurrentlocationResourceJson> get({String granularity, Map optParams}) {
    var completer = new Completer();
    var url = "currentLocation";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (granularity != null && !["best", "city"].contains(granularity)) {
      paramErrors.add("Allowed values for granularity: best, city");
    }
    if (granularity != null) queryParams["granularity"] = granularity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LatitudeCurrentlocationResourceJson.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates or creates the user's current location.
   *
   * [request] - LatitudeCurrentlocationResourceJson to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<LatitudeCurrentlocationResourceJson> insert(LatitudeCurrentlocationResourceJson request, {Map optParams}) {
    var completer = new Completer();
    var url = "currentLocation";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LatitudeCurrentlocationResourceJson.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LocationResource extends Resource {

  LocationResource(Client client) : super(client) {
  }

  /**
   * Deletes a location from the user's location history.
   *
   * [locationId] - Timestamp of the location to delete (ms since epoch).
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String locationId, {Map optParams}) {
    var completer = new Completer();
    var url = "location/{locationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (locationId == null) paramErrors.add("locationId is required");
    if (locationId != null) urlParams["locationId"] = locationId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Reads a location from the user's location history.
   *
   * [locationId] - Timestamp of the location to read (ms since epoch).
   *
   * [granularity] - Granularity of the location to return.
   *   Default: city
   *   Allowed values:
   *     best - Request best available granularity.
   *     city - Request city-level granularty.
   *
   * [optParams] - Additional query parameters
   */
  Future<Location> get(String locationId, {String granularity, Map optParams}) {
    var completer = new Completer();
    var url = "location/{locationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (granularity != null && !["best", "city"].contains(granularity)) {
      paramErrors.add("Allowed values for granularity: best, city");
    }
    if (granularity != null) queryParams["granularity"] = granularity;
    if (locationId == null) paramErrors.add("locationId is required");
    if (locationId != null) urlParams["locationId"] = locationId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Location.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts or updates a location in the user's location history.
   *
   * [request] - Location to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<Location> insert(Location request, {Map optParams}) {
    var completer = new Completer();
    var url = "location";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Location.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists the user's location history.
   *
   * [granularity] - Granularity of the requested locations.
   *   Default: city
   *   Allowed values:
   *     best - Request best available granularity.
   *     city - Request city-level granularty.
   *
   * [max_results] - Maximum number of locations to return.
   *
   * [max_time] - Maximum timestamp of locations to return (ms since epoch).
   *
   * [min_time] - Minimum timestamp of locations to return (ms since epoch).
   *
   * [optParams] - Additional query parameters
   */
  Future<LocationFeed> list({String granularity, String max_results, String max_time, String min_time, Map optParams}) {
    var completer = new Completer();
    var url = "location";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (granularity != null && !["best", "city"].contains(granularity)) {
      paramErrors.add("Allowed values for granularity: best, city");
    }
    if (granularity != null) queryParams["granularity"] = granularity;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (max_time != null) queryParams["max-time"] = max_time;
    if (min_time != null) queryParams["min-time"] = min_time;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LocationFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

