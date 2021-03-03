(
var minfreq = 440;
var maxfreq = 880;
var amp = 0.2;
var dur = 0.1;

{
	1000.do({
{PSinGrain.ar(rrand(minfreq, maxfreq), dur, amp)}.play;
rrand(0.001, 0.1).wait;
})
}.fork;
)

//

(
var minfreq = 440;
var maxfreq = 880;
var amp = 0.2;
var dur = 0.1;
{
	1000.do({
		{SinOsc.ar(rrand(minfeq, maxfreq))*