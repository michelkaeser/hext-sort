package sort;

/**
 * Abstract enum defining all available sorting algorithm implementations.
 *
 * @link http://sortvis.org/
 */
@:enum
abstract SortAlgorithm(String)
{
    // var BITONIC_SORT   = "sort.algorithms.BitconicSort";
    var BUBBLE_SORT    = "sort.algorithms.BubbleSort";
    var COCKTAIL_SORT  = "sort.algorithms.CocktailSort";
    var COMB_SORT      = "sort.algorithms.CombSort";
    var GNOME_SORT     = "sort.algorithms.GnomeSort";
    var HEAP_SORT      = "sort.algorithms.HeapSort";
    var INSERTION_SORT = "sort.algorithms.InsertionSort";
    var INTRO_SORT     = "sort.algorithms.IntroSort";
    var MERGE_SORT     = "sort.algorithms.MergeSort";
    var ODDEVEN_SORT   = "sort.algorithms.OddEvenSort";
    var QUICK_SORT     = "sort.algorithms.QuickSort";
    // var RADIX_SORT     = "sort.algorithms.RadixSort";
    var SELECTION_SORT = "sort.algorithms.SelectionSort";
    var SHELL_SORT     = "sort.algorithms.ShellSort";
    // var SMOOTH_SORT    = "sort.algorithms.SmoothSort";
    var STOOGE_SORT    = "sort.algorithms.StoogeSort";
    var SWAP_SORT      = "sort.algorithms.SwapSort";
    // var TIM_SORT       = "sort.algorithms.TimSort";
}
