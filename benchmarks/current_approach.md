Benchmark

Benchmark run from 2026-07-03 19:10:48.620882Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Apple M3</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">24 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.20.2</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">29.0.3</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">1 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">0 ns</td>
  </tr>
</table>

## Statistics



__Input: arb__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">812.64</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;13.90%</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">1.31 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">812.64</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">2.09 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: cmn_hans__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">2.01 K</td>
    <td style="white-space: nowrap; text-align: right">496.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.68%</td>
    <td style="white-space: nowrap; text-align: right">493.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">567.86 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">2.01 K</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">582.18 KB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: deu_1996__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">383.67</td>
    <td style="white-space: nowrap; text-align: right">2.61 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.49%</td>
    <td style="white-space: nowrap; text-align: right">2.60 ms</td>
    <td style="white-space: nowrap; text-align: right">2.85 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">383.67</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">1.05 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: eng__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">377.62</td>
    <td style="white-space: nowrap; text-align: right">2.65 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.33%</td>
    <td style="white-space: nowrap; text-align: right">2.64 ms</td>
    <td style="white-space: nowrap; text-align: right">2.83 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">377.62</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">1.03 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: fra__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">372.00</td>
    <td style="white-space: nowrap; text-align: right">2.69 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1.78%</td>
    <td style="white-space: nowrap; text-align: right">2.68 ms</td>
    <td style="white-space: nowrap; text-align: right">2.88 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">372.00</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">1.10 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: hin__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">726.01</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3.59%</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
    <td style="white-space: nowrap; text-align: right">1.56 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">726.01</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">1.72 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: jpn__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">590.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.69%</td>
    <td style="white-space: nowrap; text-align: right">584.08 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">681.47 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">1.69 K</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">711.82 KB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: por_BR__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">370.52</td>
    <td style="white-space: nowrap; text-align: right">2.70 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.76%</td>
    <td style="white-space: nowrap; text-align: right">2.69 ms</td>
    <td style="white-space: nowrap; text-align: right">2.90 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">370.52</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">1.06 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: rus__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">715.58</td>
    <td style="white-space: nowrap; text-align: right">1.40 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.42%</td>
    <td style="white-space: nowrap; text-align: right">1.39 ms</td>
    <td style="white-space: nowrap; text-align: right">1.51 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">715.58</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">2.08 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>



__Input: spa__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Deviation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap; text-align: right">370.28</td>
    <td style="white-space: nowrap; text-align: right">2.70 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1.76%</td>
    <td style="white-space: nowrap; text-align: right">2.69 ms</td>
    <td style="white-space: nowrap; text-align: right">2.92 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap;text-align: right">370.28</td>
    <td>&nbsp;</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">detect</td>
    <td style="white-space: nowrap">1.04 MB</td>
    <td>&nbsp;</td>
  </tr>
</table>