//Title:Ternary Search
//Author:Shawn
//Email:stepfencurryxiao@gmail.com

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int ternarySearch(var l, var r, var key, var arr) {
  if (r >= 1) {
    //Find the mid1 and mid2
    var mid1 = (l + (r - l) / 3).toInt();
    var mid2 = (r - (r - 1) / 3).toInt();

    //Check if key is present at any mid
    if (arr[mid1] == key) return mid1;

    if (arr[mid2] == key) return mid2;

    /*Since Key is not present at mid
     * check in which region it is present
     * then repeat the Search operation
     * in that region
     */

    if (key < arr[mid1]) {
      //The Key lies in between 1 and mid1
      return ternarySearch(l, mid1 - 1, key, arr);
    } else if (key > arr[mid2]) {
      //The key lies in between mid2 and r
      return ternarySearch(mid2 + 1, r, key, arr);
    } else {
      //The key lies in between mid1 and mid2
      return ternarySearch(mid1 + 1, mid2 - 1, key, arr);
    }
  }

  //Key not found
  return -1;
}

//Driver code
void main() {

  //Get the array
  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //Starting index
  final l = 0;

  // length of array
  final r = arr.length;


  test('ternarySearch [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 5 will return 4', () {
    expect(ternarySearch(l, r, 5, arr), 4);
  });

  test('ternarySearch [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 11 will return -1', () {
    expect(ternarySearch(l, r, 11, arr), -1); // will be stackoveflow here :(
  });
}
