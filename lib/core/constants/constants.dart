import 'package:project_pulse/core/common/entities/user.dart';

class Constants {
  static const noConnectionErrorMessage = 'Not Connected to the Internet';

  // Testing
  // TODO: Remove this hardcoded user
  static User testUser = User(
      id: '71402220-5104-0000-0000-000000000000',
      email: 'siranjeevik22it@srishakthi.ac.in',
      name: 'Test User',
      profilePhotoUrl:
          'https://dkopowahnjnhqgtcntam.supabase.co/storage/v1/object/public/profile-photos/20220711_135250_edited.jpg',
      role: 'Student',
      phoneNumber: '1234567890',
      registerNo: '714022205104',
      rollNo: '22IT104',
      departmentName: 'IT',
      section: 'B',
      semester: 4,
      graduationYear: 2026,
      facultyId: '',
      designation: '',
      classCode: '',
      departmentCode: '');

  static User defaultUser = User(
      id: 'Guest',
      email: '',
      name: 'guest',
      profilePhotoUrl: '',
      role: 'Guest',
      phoneNumber: '1234567890',
      registerNo: '7140222xxxxx',
      rollNo: '22xxxxx',
      departmentName: 'xx',
      section: 'x',
      semester: 4,
      graduationYear: 2026,
      facultyId: '',
      designation: '',
      classCode: '',
      departmentCode: '');

  static User errorUser = User(
      id: 'Error',
      email: '',
      name: 'Error',
      profilePhotoUrl: '',
      role: 'Error',
      phoneNumber: '1234567890',
      registerNo: '7140222xxxxx',
      rollNo: '22xxxxx',
      departmentName: 'xx',
      section: 'x',
      semester: 4,
      graduationYear: 2026,
      facultyId: '',
      designation: '',
      classCode: '',
      departmentCode: '');

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

  // API Url for differnt classes like it, cse, ece, eee, civil, mech, aids, aiml, bme, bt, food, agri

  static const Map<String, String> classTimeTableAPIUrl = {
    "ITB":
        "https://script.google.com/macros/s/AKfycbzWvba_WKWnJCIubTtzlsaTlu0YfK4FB91-J4MJnneIYZSw-6dcqk1P-Ru-w-1X8IvriA/exec",
    // "CSE":   "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
    // "ECE":
    //     "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
    // "EEE":
    //     "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
    // "CIVIL":
    //     "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
    // "MECH":
    //     "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
    // "AIDS":
    //     "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
    // "AIML":
    //     "https://script.google.com/macros/s/AKfycbxEudBZG-nQKM9zRp5pPi918RKIF3p6wPA4hFNmqmRxFJcKspoQx-cOCc4XGEtspkQR8Q/exec",
  };

  static const itbsem4TimeTableSheet =
      'https://docs.google.com/spreadsheets/d/e/2PACX-1vSrLRXrLjuBiwxrXVhiys-pag_8d2HtFyJAjN_v2hM0J01YISapsakXAF-IKbbcyXv6TrubG673Ysbx/pubhtml?gid=64714920&single=true';

  static String getItBTimeTableUrl() {
    return classTimeTableAPIUrl["ITB"]!;
  }
}
