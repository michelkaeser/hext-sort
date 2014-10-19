package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.utils.Comparator;

/**
 * This class is an implementation of "Comb Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Comb_sort
 * @link http://sortvis.org/algorithms/combsort.html
 */
class CombSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            CombSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var gap:Int    = arr.length;
        var swaps:Bool = false;
        while (true) {
            gap   = Std.int(gap / 1.25);
            swaps = false;
            for (i in 0...arr.length - gap) {
                if (comparator(arr[i], arr[i + gap]) > 0) {
                    SortAlgorithm.swap(arr, i, i + gap);
                    swaps = true;
                }
            }
            if (!swaps && gap <= 1) {
                break;
            }
        }
    }
}
