import 'dart:convert';
List<Universidades> universidadesFromJson(String str) => List<Universidades>.from(json.decode(str).map((x) => Universidades.fromJson(x)));
String universidadesToJson(List<Universidades> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class Universidades {
    Universidades({
        required this.domains,
        required this.stateProvince,
        required this.webPages,
        required this.name,
    });
    List<String> domains;
    String stateProvince;
    List<String> webPages;
    String name;
    factory Universidades.fromJson(Map<String, dynamic> json) => Universidades(
        domains: List<String>.from(json["domains"].map((x) => x)),
        stateProvince: json["state-province"],
        webPages: List<String>.from(json["web_pages"].map((x) => x)),
        name: json["name"],
    );
    Map<String, dynamic> toJson() => {
        "domains": List<dynamic>.from(domains.map((x) => x)),
        "state-province": stateProvince,
        "web_pages": List<dynamic>.from(webPages.map((x) => x)),
        "name": name,
    };
}