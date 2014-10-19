package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.util.Comparator;

/**
 * This class is an implementation of "Selection Sort" algorithm.
 *
 * @link http://de.wikipedia.org/wiki/Swap-Sort
 */
class SwapSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            SwapSort.internalSort(arr, comparator);
        }
    }

    /**
     * Sorts the given Array by using the passed Comparator to compare the items.
     *
     * @param Array<T>                arr        the Array to sort
     * @param hext.util.Comparator<T> comparator the Comparator to use
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var i:Int = 0;
        while (i < arr.length - 1) {
            var j:Int = Lambda.count(arr.slice(i + 1), function(item:T):Bool {
                return comparator(arr[i], item) > 0;
            });
            if (j > 0) {
                SortAlgorithm.swap(arr, i, i + j);
            } else {
                ++i;
            }
        }
    }
}
