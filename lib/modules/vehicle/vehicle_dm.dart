///
/// @author Darshan Prajapati 
/// @version 1.0
/// @since 23/02/23 7:36 pm
/// 
class VehicleDm {
  String? name;
  String? model;
  String? manufacturer;
  String? costInCredits;
  String? length;
  String? maxAtmospheringSpeed;
  String? crew;
  String? passengers;
  String? cargoCapacity;
  String? consumables;
  String? vehicleClass;
  List<String>? pilots;
  List<String>? films;
  String? created;
  String? edited;
  String? url;

  VehicleDm(
      {this.name,
        this.model,
        this.manufacturer,
        this.costInCredits,
        this.length,
        this.maxAtmospheringSpeed,
        this.crew,
        this.passengers,
        this.cargoCapacity,
        this.consumables,
        this.vehicleClass,
        this.pilots,
        this.films,
        this.created,
        this.edited,
        this.url});

  VehicleDm.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    model = json['model'];
    manufacturer = json['manufacturer'];
    costInCredits = json['cost_in_credits'];
    length = json['length'];
    maxAtmospheringSpeed = json['max_atmosphering_speed'];
    crew = json['crew'];
    passengers = json['passengers'];
    cargoCapacity = json['cargo_capacity'];
    consumables = json['consumables'];
    vehicleClass = json['vehicle_class'];
    pilots = json['pilots'].cast<String>();
    films = json['films'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['model'] = this.model;
    data['manufacturer'] = this.manufacturer;
    data['cost_in_credits'] = this.costInCredits;
    data['length'] = this.length;
    data['max_atmosphering_speed'] = this.maxAtmospheringSpeed;
    data['crew'] = this.crew;
    data['passengers'] = this.passengers;
    data['cargo_capacity'] = this.cargoCapacity;
    data['consumables'] = this.consumables;
    data['vehicle_class'] = this.vehicleClass;
    data['pilots'] = this.pilots;
    data['films'] = this.films;
    data['created'] = this.created;
    data['edited'] = this.edited;
    data['url'] = this.url;
    return data;
  }
}
