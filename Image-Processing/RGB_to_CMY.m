## Copyright (C) 2016 Shirley He
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} RGB_to_CMY (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shirley He <shirleyhe@wifi-131-179-37-110.host.ucla.edu>
## Created: 2016-10-10

function [C,M,Y] = RGB_to_CMY (R,G,B)
  M1 = ones(480,500);
  C = M1-(double(R)/255);
  M = M1-(double(G)/255);
  Y = M1-(double(B)/255);
endfunction
