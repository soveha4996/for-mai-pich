class People{
  final String id;
  final String name;
  final String gender;
  final String email;
  final String address;
  final String photo;

  People(this.id, this.name, this.gender, this.email, this.address, this.photo);

  static List<People> generate(){
    return [
      People('4996', 'So Veha', 'Male', 'sovehait@gmail.com', 'Phnom Penh', 'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
      People('2044', 'Soun Savdan', 'Male', 'sounsavdanit@gmail.com', 'Takeo', 'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-suliman-sallehi-1704488.jpg&fm=jpg'),

    ];
  }




}