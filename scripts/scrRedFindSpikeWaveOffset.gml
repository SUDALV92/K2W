/// scrRedFindSpikeWaveOffset(step, spikeOffset)
var step = argument0, spikeOffset = argument1;

var amplitude = 16;
if( step > 9403 ) {
    amplitude = 32;
}
var wavePhase = step % 100 + spikeOffset;
wavePhase = min( wavePhase, 100 - wavePhase );
return scrRedTweenSineInOut( 0, amplitude, wavePhase, 50 );
