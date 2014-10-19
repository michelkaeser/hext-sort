package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.util.Comparator;

/**
 * This class is an implementation of "Cocktail Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Cocktail_sort
 * @link http://sortvis.org/algorithms/cocktailsort.html
 */
class CocktailSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            CocktailSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var start:Int = 0;
        var end:Int   = arr.length - 1;
        var finished:Bool = false;
        while (!finished) {
            finished = true;
            for (i in start...end) {
                if (comparator(arr[i], arr[i + 1]) > 0) {
                    SortAlgorithm.swap(arr, i, i + 1);
                    finished = false;
                }
            }
            if (finished) {
                break;
            }
            finished = true;
            --end;

            var i:Int = end;
            while (--i >= start) {
                if (comparator(arr[i], arr[i + 1]) > 0) {
                    SortAlgorithm.swap(arr, i, i + 1);
                    finished = false;
                }
            }
            ++start;
        }
    }
}
