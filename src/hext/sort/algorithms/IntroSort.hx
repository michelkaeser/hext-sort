package hext.sort.algorithms;

import hext.sort.algorithms.HeapSort;
import hext.sort.algorithms.InsertionSort;
import hext.sort.algorithms.SortAlgorithm;
import hext.util.Comparator;

/**
 * This class is an implementation of "Introspective Sort" algorithm.
 *
 * @link http://en.wikipedia.org/wiki/Introsort
 * @link https://github.com/arnorhs/js-introsort/blob/master/index.js
 *
 * @generic T the type of the items to sort
 */
class IntroSort<T> extends SortAlgorithm<T>
{
    /**
     * @{inherit}
     */
    public static function sort<G>(arr:Null<Array<G>>, comparator:Comparator<G>):Void
    {
        if (arr != null && arr.length > 1) {
            var isort:IntroSort<G> = new IntroSort<G>(arr, comparator);
            isort.internalSort(0, arr.length, 2 * (Math.floor(Math.log(arr.length) / Math.log(2))) << 0);
        }
    }

    /**
     * @{inherit}
     */
    private function internalSort(start:Int, end:Int, limit:Int):Void
    {
        while (end - start > 16) { // magic number
            if (limit == 0) {
                var hsort:HeapSort<T> = new HeapSort<T>(this.arr, this.comparator);
                hsort.internalSort(start, end);
                return;
            }
            var p:Int = this.partition(start, end, this.medianOf3(start, Std.int( start + ((end - start) / 2) + 1 ), end - 1));
            this.internalSort(p, end, --limit);
            end = p;
        }
        InsertionSort.internalSort(this.arr, this.comparator, start, end - 1);
    }

    /**
     * TODO
     */
    private function partition(start:Int, end:Int, x:T):Int
    {
        var i:Int = start;
        var j:Int = end;
        while (true) {
            while (this.comparator(this.arr[i], x) < 0) ++i;
            --j;
            while (this.comparator(x, this.arr[j]) < 0) --j;
            if (i >= j) {
                return i;
            }
            SortAlgorithm.swap(this.arr, i, j);
            ++i;
        }

        return 0; // never reached
    }

    /**
     * TODO
     */
    private function medianOf3(start:Int, middle:Int, end:Int):T
    {
        if (this.comparator(this.arr[middle], this.arr[start]) < 0) {
            if (this.comparator(this.arr[end], this.arr[middle]) < 0) {
                return this.arr[middle];
            } else {
                if (this.comparator(this.arr[end], this.arr[start]) < 0) {
                    return this.arr[end];
                } else {
                    return this.arr[start];
                }
            }
        } else {
            if (this.comparator(this.arr[end], this.arr[middle]) < 0) {
                if (this.comparator(this.arr[end], this.arr[start]) < 0) {
                    return this.arr[start];
                } else {
                    return this.arr[end];
                }
            } else {
                return this.arr[middle];
            }
        }
    }
}
