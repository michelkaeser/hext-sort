package hext.sort.algorithms;

import hext.sort.algorithms.SortAlgorithm;
import hext.util.Comparator;

/**
 * This class is an implementation of "Merge Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Merge_sort
 * @link http://sortvis.org/algorithms/mergesort.html
 *
 * @generic T the type of the items to sort
 */
class MergeSort<T> extends SortAlgorithm<T>
{
    /**
     * @{inherit}
     */
    public static function sort<G>(arr:Null<Array<G>>, comparator:Comparator<G>):Void
    {
        if (arr != null && arr.length > 1) {
            var msort:MergeSort<G> = new MergeSort<G>(arr, comparator);
            msort.internalSort(0, arr.length - 1);
        }
    }

    /**
     * @{inherit}
     */
    private function internalSort(left:Int, right:Int):Void
    {
        if (left < right) {
            var middle:Int = Std.int( (left + right) / 2 );
            this.internalSort(left, middle);
            this.internalSort(middle + 1, right);
            var i:Int     = left;
            var end_i:Int = middle;
            var j:Int     = middle + 1;
            while (i <= end_i && j <= right) {
                if (this.comparator(this.arr[i], this.arr[j]) < 0) {
                    ++i;
                    continue;
                }
                var old:T   = this.arr[i];
                this.arr[i] = this.arr[j];
                var inc:Int = 0;
                for (k in i...j) {
                    var tmp:T = this.arr[inc + i + 1];
                    this.arr[inc + i + 1] = old;
                    old = tmp;
                    ++inc;
                }

                ++i; ++end_i; ++j;
            }
        }
    }
}
