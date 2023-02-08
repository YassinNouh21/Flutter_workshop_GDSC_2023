import 'stream_future_task.dart';

Future<List<String>> getData() async {
  try {
    throw MyException('Error Occured');
  } catch (e) {
    throw e;
  }
}
