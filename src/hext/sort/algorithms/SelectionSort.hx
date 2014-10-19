package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.util.Comparator;

/**
 * This class is an implementation of "Selection Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Selection_sort
 * @link http://sortvis.org/algorithms/selectionsort.html
 */
class SelectionSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            SelectionSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var last:Int = arr.length - 1;
        while (last > 0) {
            var k:Int = 0;
            var max:T = arr[0];
            var i:Int = 1;
            while (i <= last) {
                if (comparator(arr[i], max) > 0) {
                    max = arr[i];
                    k   = i;
                }
                ++i;
            }
            SortAlgorithm.swap(arr, k, last);

            --last;
        }
    }
}
