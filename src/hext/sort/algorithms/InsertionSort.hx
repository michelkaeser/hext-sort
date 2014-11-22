package hext.sort.algorithms;

import hext.utils.Comparator;

/**
 * This class is an implementation of "Insertion Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Insertion_sort
 * @link http://sortvis.org/algorithms/insertionsort.html
 */
class InsertionSort
{
    /**
     * @{inherit}
     */
    public static function sort<T>(arr:Null<Array<T>>, comparator:Comparator<T>):Void
    {
        if (arr != null && arr.length > 1) {
            InsertionSort.internalSort(arr, comparator, 1, arr.length - 1);
        }
    }

    /**
     * @{inherit}
     */
    @:allow(hext.sort.algorithms.IntroSort)
    private static function internalSort<T>(arr:Array<T>, comparator:Comparator<T>, start:Int, end:Int):Void
    {
        while (start <= end) {
            var j:Int = start;
            var tmp:T = arr[j];
            while (j > 0 && comparator(tmp, arr[j - 1]) < 0) {
                arr[j] = arr[j - 1];
                --j;
            }
            arr[j] = tmp;

            ++start;
        }
    }
}
