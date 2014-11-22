package hext.sort;

/**
 * Abstract enum defining all available sorting algorithm implementations.
 *
 * @link http://sortvis.org/
 */
@:enum
abstract SortAlgorithm(String)
{
    // var BITONIC_SORT   = "hext.sort.algorithms.BitconicSort";
    var BUBBLE_SORT    = "hext.sort.algorithms.BubbleSort";
    var COCKTAIL_SORT  = "hext.sort.algorithms.CocktailSort";
    var COMB_SORT      = "hext.sort.algorithms.CombSort";
    var GNOME_SORT     = "hext.sort.algorithms.GnomeSort";
    var HEAP_SORT      = "hext.sort.algorithms.HeapSort";
    var INSERTION_SORT = "hext.sort.algorithms.InsertionSort";
    var INTRO_SORT     = "hext.sort.algorithms.IntroSort";
    var MERGE_SORT     = "hext.sort.algorithms.MergeSort";
    var ODDEVEN_SORT   = "hext.sort.algorithms.OddEvenSort";
    var QUICK_SORT     = "hext.sort.algorithms.QuickSort";
    // var RADIX_SORT     = "hext.sort.algorithms.RadixSort";
    var SELECTION_SORT = "hext.sort.algorithms.SelectionSort";
    var SHELL_SORT     = "hext.sort.algorithms.ShellSort";
    // var SMOOTH_SORT    = "hext.sort.algorithms.SmoothSort";
    var STOOGE_SORT    = "hext.sort.algorithms.StoogeSort";
    var SWAP_SORT      = "hext.sort.algorithms.SwapSort";
    // var TIM_SORT       = "hext.sort.algorithms.TimSort";
}
