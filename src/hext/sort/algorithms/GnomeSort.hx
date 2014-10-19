package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.util.Comparator;

/**
 * This class is an implementation of "Gnome Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Gnome_sort
 * @link http://sortvis.org/algorithms/gnomesort.html
 */
class GnomeSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            GnomeSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var i:Int   = 0;
        var end:Int = arr.length - 1;
        while (i <= end) {
            if (i == 0 || comparator(arr[i], arr[i - 1]) >= 0) {
                ++i;
            } else {
                SortAlgorithm.swap(arr, i, i - 1);
                --i;
            }
        }
    }
}
