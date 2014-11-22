package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.utils.Comparator;

/**
 * This class is an implementation of "Odd-Even Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Odd%E2%80%93even_sort
 * @link http://sortvis.org/algorithms/oddevensort.html
 */
class OddEvenSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            OddEvenSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>, nloops:Int = 2):Void
    {
        var finished:Bool = false;
        while (!finished) {
            finished = true;
            for (n in 0...nloops) {
                var i:Int = n;
                while (i < arr.length - 1) {
                    if (comparator(arr[i], arr[i + 1]) > 0) {
                        SortAlgorithm.swap(arr, i, i + 1);
                        finished = false;
                    }
                    i += nloops;
                }
            }
        }
    }
}
