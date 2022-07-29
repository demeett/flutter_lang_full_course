void main(List<String> args) {
  IAuthority person =
      Software('Haydar', 'Software', Positions.manager.toString());

  if (person.task != Positions.manager) {
    person = IAuthority('Haydar', 'Software', Positions.manager.toString());
    person.callPhone();
    person.writing();
    person.makeTea();
  } else {
    person = Software('name', 'department', 'task');
  }
}

enum Positions { manager, employee, owner }

class IAuthority {
  late String name;
  late String department;
  late String task;
  IAuthority(this.name, this.department, this.task);

  void writing() {
    print('you can wirte');
  }

  void makeTea() {
    print('you can make tea');
  }

  void callPhone() {
    print('You can call phone');
  }
}

class Finance extends IAuthority {
  Finance(String name, String department, String task)
      : super(name, department, task);

  void calculate() {
    print('you can make calculate');
  }

  void paySalary() {
    print('you can payment salary');
  }
}

class Software extends IAuthority {
  Software(String name, String department, String task)
      : super(name, department, task);
  void accessDB() {
    print('You can access in DB');
  }

  void deleteFromtTable() {
    print('you can delete from the db in table ');
  }
}
