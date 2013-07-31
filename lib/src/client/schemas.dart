part of latitude_v1_api;

class LatitudeCurrentlocationResourceJson {

  /** Create new LatitudeCurrentlocationResourceJson from JSON data */
  LatitudeCurrentlocationResourceJson.fromJson(core.Map json) {
  }

  /** Create JSON Object for LatitudeCurrentlocationResourceJson */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of LatitudeCurrentlocationResourceJson */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A Location resource identifies a user's position at a particular time. It may include metadata about the user's position, such as a venue if the location was recorded at the time of a check-in. */
class Location {

  /** Accuracy of the latitude and longitude coordinates, in non-negative meters. Optional. */
  core.Object accuracy;

  /** Unique ID of the Buzz message that corresponds to the check-in associated with this location. Available only for check-in locations. Optional. */
  core.Object activityId;

  /** Altitude of the location, in meters. Optional. */
  core.Object altitude;

  /** Accuracy of the altitude value, in meters. Optional. */
  core.Object altitudeAccuracy;

  /** Direction of travel of the user when this location was recorded. In degrees, clockwise relative to true north. Optional. */
  core.Object heading;

  /** Kind of this item. */
  core.String kind;

  /** Latitude of the location, in decimal degrees. */
  core.Object latitude;

  /** Longitude of the location, in decimal degrees. */
  core.Object longitude;

  /** Ground speed of the user at the time this location was recorded, in meters per second. Non-negative. Optional. */
  core.Object speed;

  /** Timestamp of the Location Resource, in milliseconds since the epoch (UTC). This is also the Location Resource's unique id. */
  core.Object timestampMs;

  /** Create new Location from JSON data */
  Location.fromJson(core.Map json) {
    if (json.containsKey("accuracy")) {
      accuracy = json["accuracy"];
    }
    if (json.containsKey("activityId")) {
      activityId = json["activityId"];
    }
    if (json.containsKey("altitude")) {
      altitude = json["altitude"];
    }
    if (json.containsKey("altitudeAccuracy")) {
      altitudeAccuracy = json["altitudeAccuracy"];
    }
    if (json.containsKey("heading")) {
      heading = json["heading"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
    if (json.containsKey("speed")) {
      speed = json["speed"];
    }
    if (json.containsKey("timestampMs")) {
      timestampMs = json["timestampMs"];
    }
  }

  /** Create JSON Object for Location */
  core.Map toJson() {
    var output = new core.Map();

    if (accuracy != null) {
      output["accuracy"] = accuracy;
    }
    if (activityId != null) {
      output["activityId"] = activityId;
    }
    if (altitude != null) {
      output["altitude"] = altitude;
    }
    if (altitudeAccuracy != null) {
      output["altitudeAccuracy"] = altitudeAccuracy;
    }
    if (heading != null) {
      output["heading"] = heading;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }
    if (speed != null) {
      output["speed"] = speed;
    }
    if (timestampMs != null) {
      output["timestampMs"] = timestampMs;
    }

    return output;
  }

  /** Return String representation of Location */
  core.String toString() => JSON.stringify(this.toJson());

}

class LocationFeed {

  core.List<Location> items;

  core.String kind;

  /** Create new LocationFeed from JSON data */
  LocationFeed.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Location.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for LocationFeed */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of LocationFeed */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
