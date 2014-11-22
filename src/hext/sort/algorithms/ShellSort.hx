package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.utils.Comparator;

/**
 * This class is an implementation of "Shell Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Shellsort
 * @link http://sortvis.org/algorithms/shellsort.html
 */
class ShellSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            ShellSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var t:Array<Int> = [5, 3, 1];
        for (h in t) {
            for (j in h...arr.length) {
                var i:Int    = j - h;
                var r:T      = arr[j];
                var flag:Int = 0;
                while (i > -1) {
                    if (comparator(r, arr[i]) < 0) {
                        flag = 1;
                        SortAlgorithm.swap(arr, i, i + h);
                        i -= h;
                    } else {
                        break;
                    }
                }
                arr[i + h] = r;
            }
        }
    }
}
