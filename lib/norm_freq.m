function [V] = norm_freq(lambda, a, AN)
%NORM_FREQ Returns the normalized frequency
% lambda: The wavelength
% a: The radius of the nucleus
% AN: The numeric apperture
V = 2*pi * a * AN / lambda;
end

