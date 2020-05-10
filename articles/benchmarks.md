# Benchmarks


## Custom benchmark

### Results

![Length Benchmark](/images/benchmark2.png)

---

### Code for benchmark

``` C#

using System;
using System.Collections.Generic;
using Units.RealFloat;

class Program
{
    static void Main(string[] args)
    {
        if (args.Length == 0)
        {
            return;
        }
        if (args[0] == "length")
        {
            var len = Length.FromYard(1f);
            var yard = Length.FromYard(1f);
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{(float)(len.ToMeter())} meters");
        }
        else if (args[0] == "unitsnet")
        {
            var len = UnitsNet.Length.FromYards(1f);
            var yard = UnitsNet.Length.FromYards(1f);
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{len.Meters} meters");
        }
        else if (args[0] == "float")
        {
            var len = 0.9144f;
            var yard = 0.9144f;
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{len} meters");
        }
        else if (args[0] == "double")
        {
            var len = 0.9144f;
            var yard = 0.9144f;
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{len} meters");
        }
        else if (args[0] == "scalar")
        {
            var len = (Numbers.RealFloats.RealFloat)1f;
            var yard = (Numbers.RealFloats.RealFloat)0.9144f;
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{(float)len} meters");
        }
        else if (args[0] == "scalarD")
        {
            var len = (Numbers.RealDoubles.RealDouble)1f;
            var yard = (Numbers.RealDoubles.RealDouble)0.9144f;
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{(float)len} meters");
        }
        else if (args[0] == "lengthD")
        {
            var len = Units.RealDouble.Length.FromYard(1f);
            var yard = Units.RealDouble.Length.FromYard(1f);
            for (int i = 0; i < 10000000; i++)
            {
                len += yard;
            }
            System.Console.WriteLine($"{(float)(len)} meters");
        }
    }
}

```

## BenchmarkNet benchmark

### System

```
BenchmarkDotNet=v0.12.1, OS=Windows 10.0.18363.815 (1909/November2018Update/19H2)
Intel Core i5-5200U CPU 2.20GHz (Broadwell), 1 CPU, 4 logical and 2 physical cores
.NET Core SDK=5.0.100-preview.3.20216.6
  [Host]        : .NET Core 5.0.0 (CoreCLR 5.0.20.21406, CoreFX 5.0.20.21406), X64 RyuJIT  [AttachedDebugger]
  .NET Core 5.0 : .NET Core 5.0.0 (CoreCLR 5.0.20.21406, CoreFX 5.0.20.21406), X64 RyuJIT
  CoreRt 5.0    : .NET CoreRT 1.0.28905.01 @BuiltBy: dlab14-DDVSOWINAGE063 @Branch: master @Commit: 8428c6630b6e3e1c66446a5040ba1c0a077d2725, X64 AOT
```

### Results

Method |Job |Runtime |N |Mean |Error |StdDev |
------------------------ |-------------- |-------------- |----- |----------:|----------:|----------:|
UnitsCore_Length_Float |NET Core 5.0 | .NET Core 5.0 | 1000 | 11.583 μs | 0.1145 μs | 0.1071 μs |
UnitsCore_Length_Double |NET Core 5.0 | .NET Core 5.0 | 1000 | 11.607 μs | 0.1780 μs | 0.1665 μs |
UnitsCore_Scalar_Float |NET Core 5.0 | .NET Core 5.0 | 1000 |  7.507 μs | 0.0231 μs | 0.0205 μs |
UnitsCore_Scalar_Double |NET Core 5.0 | .NET Core 5.0 | 1000 |  7.522 μs | 0.0653 μs | 0.0546 μs |
System_Single |NET Core 5.0 | .NET Core 5.0 | 1000 |  1.151 μs | 0.0059 μs | 0.0052 μs |
System_Double |NET Core 5.0 | .NET Core 5.0 | 1000 |  1.149 μs | 0.0049 μs | 0.0041 μs |
UnitsNet_Length |NET Core 5.0 | .NET Core 5.0 | 1000 | 22.225 μs | 0.3612 μs | 0.3202 μs |
UnitsCore_Length_Float |CoreRt 5.0 |    CoreRt 5.0 | 1000 | 11.855 μs | 0.2321 μs | 0.2763 μs |
UnitsCore_Length_Double |CoreRt 5.0 |    CoreRt 5.0 | 1000 | 11.549 μs | 0.0839 μs | 0.0785 μs |
UnitsCore_Scalar_Float |CoreRt 5.0 |    CoreRt 5.0 | 1000 |  7.509 μs | 0.0419 μs | 0.0392 μs |
UnitsCore_Scalar_Double |CoreRt 5.0 |    CoreRt 5.0 | 1000 |  7.613 μs | 0.1304 μs | 0.1220 μs |
System_Single |CoreRt 5.0 |    CoreRt 5.0 | 1000 |  1.150 μs | 0.0051 μs | 0.0039 μs |
System_Double |CoreRt 5.0 |    CoreRt 5.0 | 1000 |  1.150 μs | 0.0074 μs | 0.0066 μs |
UnitsNet_Length |CoreRt 5.0 |    CoreRt 5.0 | 1000 | 22.757 μs | 0.1787 μs | 0.1584 μs |

### Code for benchmark

``` C#

using System;
using System.Collections.Generic;
using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Running;
using Units.RealFloat;

[SimpleJob(runtimeMoniker: BenchmarkDotNet.Jobs.RuntimeMoniker.CoreRt50)]
[SimpleJob(runtimeMoniker: BenchmarkDotNet.Jobs.RuntimeMoniker.NetCoreApp50)]
[MarkdownExporter, AsciiDocExporter, HtmlExporter, CsvExporter, RPlotExporter]
public class AddingBenchmark
{
    [Params(1000)]
    public int N { get; set; }
    private readonly Length lf = Length.FromYard(1f);
    private readonly Units.RealDouble.Length ld = Units.RealDouble.Length.FromYard(1);
    private readonly Numbers.RealFloats.RealFloat rf = 1f;
    private readonly Numbers.RealDoubles.RealDouble rd = 1f;
    private readonly float f = 1f;
    private readonly double d = 1;
    private readonly UnitsNet.Length unl = UnitsNet.Length.FromYards(1);

    [Benchmark]
    public Length UnitsCore_Length_Float()
    {
        var v = lf;
        for (int i = 0; i < N; i++)
        {
            v += lf;
        }
        return v;
    }
    [Benchmark]
    public Units.RealDouble.Length UnitsCore_Length_Double()
    {
        var v = ld;
        for (int i = 0; i < N; i++)
        {
            v += ld;
        }
        return v;
    }
    [Benchmark]
    public Numbers.RealFloats.RealFloat UnitsCore_Scalar_Float()
    {
        var v = rf;
        for (int i = 0; i < N; i++)
        {
            v += rf;
        }
        return v;
    }
    [Benchmark]
    public Numbers.RealDoubles.RealDouble UnitsCore_Scalar_Double()
    {
        var v = rd;
        for (int i = 0; i < N; i++)
        {
            v += rd;
        }
        return v;
    }
    [Benchmark]
    public float System_Single()
    {
        var v = f;
        for (int i = 0; i < N; i++)
        {
            v += f;
        }
        return v;
    }
    [Benchmark]
    public double System_Double()
    {
        var v = d;
        for (int i = 0; i < N; i++)
        {
            v += d;
        }
        return v;
    }
    [Benchmark]
    public UnitsNet.Length UnitsNet_Length()
    {
        var v = unl;
        for (int i = 0; i < N; i++)
        {
            v += unl;
        }
        return v;
    }
}
class Program
{
    static void Main(string[] args)
    {
        BenchmarkRunner.Run<AddingBenchmark>();
    }
}

```