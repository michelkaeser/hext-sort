package sort.algorithms;

import lib.util.Comparator;
import sort.algorithms.SortAlgorithm;

/**
 * This class is an implementation of "Quick Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Quicksort
 * @link http://sortvis.org/algorithms/quicksort.html
 *
 * @generic T the type of the items to sort
 */
class QuickSort<T> extends SortAlgorithm<T>
{
    /**
     * @{inherit}
     */
    public static function sort<G>(arr:Array<G>, comparator:Comparator<G>):Void
    {
        if (arr.length > 1) {
            var qsort:QuickSort<G> = new QuickSort<G>(arr, comparator);
            qsort.internalSort(0, arr.length - 1);
        }
    }

    /**
     * @{inherit}
     */
    private function internalSort(left:Int, right:Int):Void
    {
        var p:T   = this.arr[left];
        var i:Int = left;
        var j:Int = right;
        do {
            while(this.comparator(this.arr[i], p) < 0) i++;
            while(this.comparator(this.arr[j], p) > 0)  j--;
            if (i <= j) {
                SortAlgorithm.swap(this.arr, i, j);
                i++;
                j--;
            }
        } while (i < j);

        if (j > left) {
            this.internalSort(left, j);
        }
        if (right > i) {
            this.internalSort(i, right);
        }
    }
}
