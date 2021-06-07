
import 'package:diegomazzalovo_mpm/custom_widgets.dart';

class RollReader {

    final TextEditingController tec = new TextEditingController();

    RollReader() {
        _readLastRolled();
    }

    Future<String> get _localPath async {
        final directory = await getApplicationDocumentsDirectory();
        return directory.path;
    }

    Future<File> get _localFile async {
        final path = await _localPath;
        return File('$path/lastRoll.txt');
    }

    void _readLastRolled() async {
        try {
            final file = await _localFile;
            String contents = await file.readAsString();
            tec.text = contents;
        } catch (e) {
            return ;
        }
    }


    Future<File> writeLastRolled() async {
        final file = await _localFile;
        return file.writeAsString(tec.text);
    }




}