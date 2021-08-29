
class PokeModel{
  String picPath;
  String name;
  double height;
  double weight;
  String type;

  PokeModel(this.picPath, this.name, this.height, this.weight, this.type);

  static List<PokeModel> samples=[
    PokeModel('images/d.png', 'Bulbasaur', 0.5, 5.0, 'Fire'),
    PokeModel('images/abc.png', 'Ivysaur', 1.0, 20, 'Normal'),
    PokeModel('images/e.png', 'Venusaur', 6.0, 30.0, 'Water'),
    PokeModel('images/f.png', 'Charmander', 3.5, 22.0, 'Fighting'),
    PokeModel('images/g.png', 'Charmeleon', 5.0, 63.0, 'Poison'),
    PokeModel('images/h.png', 'Charizard', 7.5, 33.0, 'Electric'),
    PokeModel('images/i.png', 'Squirtle', 7.7, 55.0, 'Steel'),
    PokeModel('images/j.png', 'Wartortle', 3.0, 11.0, 'Dragon'),
    PokeModel('images/k.png', 'Bulbasaur', 6.6, 55.0, 'Psychic'),
  ];
}