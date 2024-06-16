import 'package:project_pulse/core/constants/constants.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/features/main/domain/entities/current_class.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract interface class CurrentClassRemoteDataSource {
  Future<CurrentClass> getCurrentClasses();
}

class CurrentClassRemoteDataSourceImpl implements CurrentClassRemoteDataSource {
  CurrentClassRemoteDataSourceImpl();

  @override
  Future<CurrentClass> getCurrentClasses() async {
    try {
      final response = await http.get(
        Uri.parse(Constants.getItBTimeTableUrl()),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return CurrentClass.fromList(json.decode(response.body));
      } else {
        throw const ServerException('Unable to fetch current classes');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
