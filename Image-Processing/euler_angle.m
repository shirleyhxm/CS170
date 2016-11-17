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
## @deftypefn {Function File} {@var{retval} =} euler_angle (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shirley He <shirleyhe@wifi-131-179-37-110.host.ucla.edu>
## Created: 2016-10-11

syms phi theta psi

function [Rotation] = euler_angle(phi,theta,psi)
  #R12_psi = blkdiag(rotations_and_reflections(psi),1);
  #R23_theta = blkdiag(1,rotations_and_reflections(theta));
  #R12_phi = blkdiag(rotations_and_reflections(phi),1);
  
  R12_psi = [cos(psi),-sin(psi),0;sin(psi),cos(psi),0;0,0,1];
  R23_theta = [1,0,0;0,cos(theta),-sin(theta);0,sin(theta),cos(theta)];
  R12_phi = [cos(phi),-sin(phi),0;sin(phi),cos(phi),0;0,0,1];
  Rotation = R12_psi * R23_theta * R12_phi;
endfunction
