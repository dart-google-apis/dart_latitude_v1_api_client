part of latitude_v1_api_client;

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

  /** Kind of this item. */
  core.String kind;

  /** Create new Location from JSON data */
  Location.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Location */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
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
      items = [];
      json["items"].forEach((item) {
        items.add(new Location.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for LocationFeed */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of LocationFeed */
  core.String toString() => JSON.stringify(this.toJson());

}

