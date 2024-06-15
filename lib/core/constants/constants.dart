import 'package:project_pulse/core/common/entities/user.dart';

class Constants {
  static const noConnectionErrorMessage = 'Not Connected to the Internet';

  // Testing
  // TODO: Remove this hardcoded user
  static User testUser = User(
    id: '71402220-5104-0000-0000-000000000000',
    email: 'siranjeevik22it@srishakthi.ac.in',
    name: 'Siranjeevi K',
    profilePhotoUrl:
        'https://dkopowahnjnhqgtcntam.supabase.co/storage/v1/object/public/profile-photos/20220711_135250_edited.jpg',
    role: 'Student',
  );

  static User defaultUser = User(
    id: 'Guest',
    email: '',
    name: 'guest',
    profilePhotoUrl: '',
    role: 'Guest',
  );

  static const defaultProlilePhotoUrl = 'https://via.placeholder.com/150';

  static const Map<int, String> semlist = {
    1: "Semester 1",
    2: "Semester 2",
    3: "Semester 3",
    4: "Semester 4",
    5: "Semester 5",
    6: "Semester 6",
    7: "Semester 7",
    8: "Semester 8"
  };

  static const Map<String, String> semesterToNumber = {
    "Semester 1": "1",
    "Semester 2": "2",
    "Semester 3": "3",
    "Semester 4": "4",
    "Semester 5": "5",
    "Semester 6": "6",
    "Semester 7": "7",
    "Semester 8": "8",
  };

  static const List<String> branch = [
    "IT",
    "CSE",
    "ECE",
    "EEE",
    "CIVIL",
    "MECH",
    "AIDS",
    "AIML",
    'BME',
    'BT',
    'FOOD',
    "AGRI"
  ];
}
