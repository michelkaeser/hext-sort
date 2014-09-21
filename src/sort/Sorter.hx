package sort;

import lib.Exception;
import lib.util.Comparator;
import sort.SortAlgorithm;
import sort.algorithms.*;
import sort.algorithms.BubbleSort;
import sort.algorithms.CocktailSort;
import sort.algorithms.CombSort;
import sort.algorithms.GnomeSort;
import sort.algorithms.HeapSort;
import sort.algorithms.InsertionSort;
import sort.algorithms.IntroSort;
import sort.algorithms.MergeSort;
import sort.algorithms.OddEvenSort;
import sort.algorithms.QuickSort;
import sort.algorithms.SelectionSort;
import sort.algorithms.ShellSort;
import sort.algorithms.StoogeSort;
import sort.algorithms.SwapSort;
import sort.algorithms.TSortAlgorithm;

/**
 * Generic wrapper class around the various sorting algorithm implementations.
 *
 * @generic T the type of items to sort
 */
class Sorter<T>
{
    /**
     * Stores the algorithm class with which to sort.
     *
     * @var sort.algorithms.TSortAlgorithm
     */
    private var algorithm:TSortAlgorithm;

    /**
     * Stores the Comparator used to compare items in the Array.
     *
     * @var lib.util.Comparator<T>
     */
    private var comparator:Comparator<T>;


    /**
     * Constructor to initialize a new Sorter.
     *
     * @param sort.SortAlgorithm  algorithm  the algorithm to use
     * @param lib.util.Comparator comparator the comparator to use
     */
    public function new(algorithm:SortAlgorithm, comparator:Comparator<T>):Void
    {
        this.algorithm  = cast Type.resolveClass(cast algorithm);
        this.comparator = comparator;
    }

    /**
     * Sorts the given Array.
     *
     * @param Null<Array<T>> arr the Array to sort
     */
    public function sort(arr:Null<Array<T>>):Void
    {
        if (arr != null && arr.length > 1) {
            this.algorithm.sort(arr, this.comparator);
        }
    }
}
