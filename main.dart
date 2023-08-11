/*void main() {
  print(ef());
  createButton("Gallery Button", () {
    print("Created Button");
  });
}*/

dynamic ef() {
  print("ef");
}


dynamic createButton(dynamic text, Function createdButton, {dynamic color = "Black", dynamic width = 10.0}) {
  print(text);
  print(color);
  print(width);
}

class PlayerBase {
  String name = "ddtank";
  int id = 1;
  double money = 0.0;

  PlayerBase(String name, int id, double money) {
    this.name = name;
    this.id = id;
    this.money = money;
  }

  dynamic getMoney() {
    return this.money;
  }

  dynamic setMoney(double value) {
    this.money = value;
    return this.money;
  }

  dynamic addMoney(double value) {
    this.money = this.money + value;
    return this.money;
  }
}

class Player extends PlayerBase {
  String profession;
  Player(String name, int id, double money, this.profession) : super(name, id, money);
}

abstract class Creature {
  String ?name;
  double weigth = 0;

  Creature(this.name, this.weigth);

  dynamic addWeigth(double value) {
    this.weigth = this.weigth + value;
    return this.weigth;
  }
}

class Monster extends Creature {
  int power = 0;

  Monster(String name, double weigth, this.power) : super(name, weigth);
}

void main() {
  PlayerBase player = PlayerBase("lnk", 2, 10.0);

  player.addMoney(234.0);
  print(player.getMoney());
  player.setMoney(23.0);

  Player _player = Player("Testing", 3, 45.0, "Abc");
  _player.addMoney(245.0);

  Monster monster = Monster("MONSTER", 500.0, 245);

  print(monster.addWeigth(23.0));

}
