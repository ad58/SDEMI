function [amp, channel, pos] = calcP1Amplitude( data )
%CALCP1AMPLITUDE Summary of this function goes here
%   Detailed explanation goes here
	[~,max_amp,channel] = calcSpikeDurationAndMaxAmp(data,data.samplingRate);
	
	[min_val, min_index] = min(data.sta(channel, :));
	
	[amp, pos] = max(data.sta(channel,1:min_index));

end

