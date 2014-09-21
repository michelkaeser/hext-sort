package sort.tests;

#if cpp
    import mcover.coverage.MCoverage;
    import mcover.coverage.CoverageLogger;
#end
import haxe.unit.TestRunner;

/**
 * TestSuite runner for classes in sort package.
 */
class Runner
{
    public static function main():Void
    {
        var r = new TestRunner();

        r.add( new sort.tests.TestSorter() );
        r.add( new sort.tests.algorithms.TestSortAlgorithm() );

        r.add( new sort.tests.algorithms.TestBubbleSort() );
        r.add( new sort.tests.algorithms.TestCocktailSort() );
        r.add( new sort.tests.algorithms.TestCombSort() );
        r.add( new sort.tests.algorithms.TestGnomeSort() );
        r.add( new sort.tests.algorithms.TestHeapSort() );
        r.add( new sort.tests.algorithms.TestInsertionSort() );
        r.add( new sort.tests.algorithms.TestIntroSort() );
        r.add( new sort.tests.algorithms.TestMergeSort() );
        r.add( new sort.tests.algorithms.TestOddEvenSort() );
        r.add( new sort.tests.algorithms.TestQuickSort() );
        r.add( new sort.tests.algorithms.TestSelectionSort() );
        r.add( new sort.tests.algorithms.TestShellSort() );
        r.add( new sort.tests.algorithms.TestStoogeSort() );
        r.add( new sort.tests.algorithms.TestSwapSort() );

        var success:Bool = r.run();
        #if cpp
            MCoverage.getLogger().report();
        #end

        #if sys
            Sys.exit(success ? 0 : 1);
        #end
    }
}
