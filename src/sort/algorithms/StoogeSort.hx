package sort.algorithms;

import lib.util.Comparator;
import sort.algorithms.SortAlgorithm;

/**
 * This class is an implementation of "Stoge Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Stooge_sort
 * @link http://sortvis.org/algorithms/stoogesort.html
 *
 * @generic T the type of the items to sort
 */
class StoogeSort<T> extends SortAlgorithm<T>
{
    /**
     * @{inherit}
     */
    public static function sort<G>(arr:Array<G>, comparator:Comparator<G>):Void
    {
        if (arr.length > 1) {
            var ssort:StoogeSort<G> = new StoogeSort<G>(arr, comparator);
            ssort.internalSort(0, arr.length - 1);
        }
    }

    /**
     * @{inherit}
     */
    private function internalSort(i:Int, j:Int):Void
    {
        if (this.comparator(this.arr[j], this.arr[i]) < 0) {
            SortAlgorithm.swap(this.arr, i, j);
        }
        if ((j - i + 1) >= 3) {
            var t:Int = Std.int( (j - i + 1) / 3 );
            this.internalSort(i, j - t);
            this.internalSort(i + t, j);
            this.internalSort(i, j - t);
        }
    }
}
