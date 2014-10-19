package hext.sort;

import hext.Exception;
import hext.sort.SortAlgorithm;
import hext.sort.algorithms.BubbleSort;
import hext.sort.algorithms.CocktailSort;
import hext.sort.algorithms.CombSort;
import hext.sort.algorithms.GnomeSort;
import hext.sort.algorithms.HeapSort;
import hext.sort.algorithms.InsertionSort;
import hext.sort.algorithms.IntroSort;
import hext.sort.algorithms.MergeSort;
import hext.sort.algorithms.OddEvenSort;
import hext.sort.algorithms.QuickSort;
import hext.sort.algorithms.SelectionSort;
import hext.sort.algorithms.ShellSort;
import hext.sort.algorithms.StoogeSort;
import hext.sort.algorithms.SwapSort;
import hext.sort.algorithms.TSortAlgorithm;
import hext.util.Comparator;

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
     * @var hext.sort.algorithms.TSortAlgorithm
     */
    private var algorithm:TSortAlgorithm;

    /**
     * Stores the Comparator used to compare items in the Array.
     *
     * @var hext.util.Comparator<T>
     */
    private var comparator:Comparator<T>;


    /**
     * Constructor to initialize a new Sorter.
     *
     * @param hext.sort.SortAlgorithm algorithm  the algorithm to use
     * @param hext.util.Comparator    comparator the comparator to use
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
        this.algorithm.sort(arr, this.comparator);
    }
}
