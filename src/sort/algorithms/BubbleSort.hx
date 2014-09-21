package sort.algorithms;

import lib.util.Comparator;
import sort.algorithms.SortAlgorithm;

/**
 * This class is an implementation of "Bubble Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Bubble_sort
 * @link http://sortvis.org/algorithms/bubblesort.html
 */
class BubbleSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        if (arr.length > 1) {
            BubbleSort.internalSort(arr, comparator);
        }
    }

    /**
     * @{inherit}
     */
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>):Void
    {
        var bound:Int = arr.length - 1;
        while (true) {
            var t:Int = 0;
            for (i in 0...bound) {
                if (comparator(arr[i], arr[i + 1]) > 0) {
                    SortAlgorithm.swap(arr, i, i + 1);
                    t = i;
                }
            }
            if (t == 0) {
                break;
            }
            bound = t;
        }
    }
}
