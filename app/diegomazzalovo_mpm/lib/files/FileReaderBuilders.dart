
class FileReaderBuilders {

  static String buildWeaponList(List<dynamic> weaponData) {
    if(weaponData.length > 0)
      return
        "Type: " + weaponData[1].toString()+
        "\nAccuracy: " + weaponData[2].toString()+
        "\nConcealability: " + weaponData[3].toString()+
        "\nAvailability: " + weaponData[4].toString()+
        "\nDamage/Ammunition: " + weaponData[5].toString()+
        "\nNumber of Shots: " + weaponData[6].toString()+
        "\nRate of Fire: " + weaponData[7].toString()+
        "\nReliability: " + weaponData[8].toString()+
        "\nRange: " + weaponData[9].toString()+
        "\nCost: " + weaponData[10].toString()+
        "\nDescription: \n" + weaponData[11].toString()
      ;
    return "";
  }

  static String buildArmorList(List<dynamic> armorData) {
    return
      "\nCovers: " + armorData[1].toString()+
      "\nSP: " + armorData[2].toString()+
      "\nEV: " + armorData[3].toString()+
      "\nCost: " + armorData[4].toString()
    ;
  }

  static String buildAmmoList(String ammoValue) {
    return "\nCost: " + ammoValue.toString();
  }

  static String buildSpecialEquip(List<dynamic> specialEquipData) {
    return
      "\nCost: " + specialEquipData[1].toString()+
      "\n\nDescription:\n" + specialEquipData[2].toString()
    ;
  }

  static String buildArray(List<dynamic> arr, { int start = 1 }) {
    String res = '';
    List<int> interval = [];
    for(int actualPosition = start; actualPosition < arr.length + start; actualPosition++) {
      if(actualPosition<arr.length+start-1 && arr[actualPosition-start+1]==arr[actualPosition-start])
        interval.add(actualPosition-start);
      else if(interval.length == 0)
        res = res + actualPosition.toString() + ": " + arr[actualPosition-start] + "\n\n";
      else {
        res += (interval[0]+start).toString() + "-" + actualPosition.toString() + ": " + arr[actualPosition-start] + "\n\n";
        interval = [];
      }
    }
    return res;
  }

  static String buildBackgroundTable(List<dynamic> arr, {int start=1}) {
    if(arr.length == 2 && arr[0] is List && arr[1] is String)
      return buildArray(arr[0], start: start) + "GOTO : " + arr[1] + "\n\n";
    String res = '';
    for(int el = 0 ; el < arr.length ; el++) {
      List o = arr[el];
      if(el == 0)
        res += buildBackgroundTable([List.filled(o[1], o[0]), o[2]]);
      else {
        List o1 = arr[el-1];
        res += buildBackgroundTable([List.filled(o[1] - o1[1], o[0]), o[2]], start: o1[1]+1);
      }
    }
    return res;
  }

  static String buildTable(Map<String, dynamic> map) {
    String res = '';
    for(var el in map.keys)
      if(el != "Type")
        res = res + el.toString() + ": " + map[el] + "\n\n";
    return res;
  }
  
}