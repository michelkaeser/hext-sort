package hext.sort.algorithms;

import hext.sort.algorithms.TSortAlgorithm;
import hext.utils.Comparator;

/**
 * Abstract sorting algorithm base class to be extended by
 * complex sorting algorithms with deep recursion or lot of internal method calling.
 *
 * We use instances instead of pure static classes since passing references in-and-out
 * may be to expensive.
 *
 * @generic T the type of items to sort
 */
class SortAlgorithm<T> // implements TSortAlgorithm
{
    /**
     * Stores the Array to sort.
     *
     * @var Array<T>
     */
    private var arr:Array<T>;

    /**
     * Stores the Comparator used to compare the Array items.
     *
     * @var hext.utils.Comparator<T>
     */
    private var comparator:Comparator<T>;


    /**
     * Constructor to initialize a new AbstractAlgorihm instance.
     *
     * @param Array<T>                 arr        the Array to sort
     * @param hext.utils.Comparator<T> comparator the Comparator to use
     */
    private function new(arr:Array<T>, comparator:Comparator<T>):Void
    {
        this.arr        = arr;
        this.comparator = comparator;
    }

    /**
     * Swaps the two items at given indexes.
     *
     * @param Array<G> arr the Array to run the operation on
     * @param Int      x   the first index to swap
     * @param Int      y   the second index to swap
     */
    public static #if HEXT_SORT_INLINE inline #end function swap<G>(arr:Array<G>, x:Int, y:Int):Void
    {
        var tmp:G = arr[x];
        arr[x]    = arr[y];
        arr[y]    = tmp;
    }
}
