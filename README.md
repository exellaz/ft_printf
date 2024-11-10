# ft_printf

<p align="center">
	<img src="https://github.com/exellaz/ft_printf/blob/master/ft_printf_badge"/>
</p>

The goal of this project is to recreate a version of printf from libc that handles certain type conversions. The bonus portion of this project will also require handling some format specifiers aswell.

## Status
Finished: 2024-3-20. Grade: 125/100.

## Usage
``make``  to compile into ``libftprintf.a``

To use the library, include the header ``ft_printf.h`` and compile your C files with ``libftprintf.a`` :
```c
#include "ft_printf.h"
```
```bash
gcc main.c libftprintf.a
```

## Supported Format Specifiers

<table>
	<thead>
		<tr>
			<th>Flags</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
	</thead>
		<tr>
			<td align="center">-</td>
			<td>Left justify the result within the field. By default it is right justified.</td>
		</tr>
		<tr>
			<td align="center">+</td>
			<td>Forces to precede the result with a plus or minus sign (+ or -) even for positive numbers. By default, only negative numbers are preceded with a sign.</td>
		</tr>
		<tr>
			<td align="center">(<b><i>space</b></i>)</td>
			<td>If no sign is going to be written, a blank space is inserted before the value.</td>
		</tr>
		<tr>
			<td align="center">#</td>
			<td>Used with x or X specifiers the value is preceded with 0x or 0X respectively for values different than zero.</td>
		</tr>
		<tr>
			<td align="center">0</td>
			<td>Left-pads the number with zeroes (0) instead of spaces when padding is specified.</td>
		</tr>
	</tbody>
</table>
<br>
<table>
	<thead>
		<tr>
			<th>Width</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
	</thead>
		<tr>
			<td align="center">(<b><i>number</b></i>)</td>
			<td>Minimum number of characters to be printed. If the value to be printed is shorter than this number, the result is padded with blank spaces. The value is not truncated even if the result is larger.</td>
		</tr>
		<tr>
			<td align="center">*</td>
			<td>The width is not specified in the format string, but as an additional integer value argument preceding the argument that has to be formatted.</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th>Precision</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
	</thead>
		<tr>
			<td align="center">.<b><i>number</b></i></td>
			<td>For integer specifiers (d, i, u, x, X) − precision specifies the minimum number of digits to be written. If the value to be written is shorter than this number, the result is padded with leading zeros. The value is not truncated even if the result is longer. A precision of 0 means that no character is written for the value 0. For s − this is the maximum number of characters to be printed. By default all characters are printed until the ending null character is encountered. For c type − it has no effect. When no precision is specified, the default is 1. If the period is specified without an explicit value for precision, 0 is assumed.</td>
		</tr>
		<tr>
			<td align="center">.*</td>
			<td>The precision is not specified in the format string, but as an additional integer value argument preceding the argument that has to be formatted.</td>
		</tr>
	</tbody>
</table>
<br>
<table>
	<thead>
		<tr>
			<th>Format Specifier</th>
			<th>Description</th>
			<th>Example</th>
		</tr>
	</thead>
	<tbody>
	</thead>
		<tr>
			<td align="center">d <b><i>or</b></i> i</td>
			<td>Writes a signed decimal integer</td>
			<td>392</td>
		</tr>
		<tr>
			<td align="center">u</td>
			<td>Writes an unsigned decimal integer</td>
			<td>7235</td>
		</tr>
		<tr>
			<td align="center">x</td>
			<td>Writes an unsigned hexadecimal integer.</td>
			<td>7fa</td>
		</tr>
		<tr>
			<td align="center">X</td>
			<td>Writes an unsigned hexadecimal integer(uppercase).</td>
			<td>7FA</td>
		</tr>
		<tr>
			<td align="center">c</td>
			<td>Writes a character.</td>
			<td>a</td>
		</tr>
		<tr>
			<td align="center">s</td>
			<td>Writes a string of characters.</td>
			<td>sample</td>
		</tr>
		<tr>
			<td align="center">p</td>
			<td>Writes a pointer's address.</td>
			<td>b8000000</td>
		</tr>
		<tr>
			<td align="center">%</td>
			<td>A % followed by another % character will write a single % to the stream.</td>
			<td>%</td>
		</tr>
	</tbody>
</table>
