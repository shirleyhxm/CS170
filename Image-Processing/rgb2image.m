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
## @deftypefn {Function File} {@var{retval} =} rgb2image (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shirley He <shirleyhe@wifi-131-179-37-110.host.ucla.edu>
## Created: 2016-10-10

function [A] = rgb2image (R,G,B)
  A(:,:,1) = uint8(R*256);
  A(:,:,2) = uint8(G*256);
  A(:,:,3) = uint8(B*256);

endfunction
